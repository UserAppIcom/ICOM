import { Router } from "express";
import { renderUserinicio } from "../controllers/inicio.controller.js";
import { isNotLoggedIn } from "../middlewares/protectedRoutes.js";

const router = Router();

router.get("/inicio", isNotLoggedIn, renderUserinicio);

export default router;