import passport from "passport";
import { encryptPassword } from "../lib/helpers.js";
import { pool } from "../database.js";

export const renderSignUp = (req, res) => res.render("auth/signup");

export const renderInicioLinks = (req, res) => res.render("links/InicioLinks");

export const renderLinkCategoria = (req, res) => res.render("links/categoria");

export const signUp = async (req, res, next) => {
  const { fullname, email, password1  } = req.body;

  const password = await encryptPassword(password1);

  // Saving in the Database
  const [result] = await pool.query("INSERT INTO users SET ? ", {
    fullname,
    email,
    password,
  
  });

  req.login(
    {
      id: result.insertId,
      fullname,
      email,
      password
    },
    (err) => {
      if (err) {
        return next(err);
      }
      return res.redirect("links/Inicio");
    }
  );
};

export const renderSignIn = (req, res) => {
  res.render("auth/signin");
};



export const signIn = passport.authenticate("local.signin", {
  successRedirect: "links/Inicio",
  failureRedirect: "/signin",
  passReqToCallback: true,
  failureFlash: true,
});

export const logout = (req, res, next) => {
  req.logout(function (err) {
    if (err) return next(err);
    res.redirect("/signin");
  });

  


};
