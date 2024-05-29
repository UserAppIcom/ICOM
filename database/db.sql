CREATE DATABASE  linksdb;

USE linksdb;

-- TABLE USER
-- all pasword wil be encrypted using SHA2
CREATE TABLE users (
  id INT(11) NOT NULL AUTO_INCREMENT,
  fullname VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  password VARCHAR(60) NOT NULL,
  tipoDoc VARCHAR(15) NOT NULL,
  numDoc  VARCHAR(15) NOT NULL,
  codCliente VARCHAR(15) NOT NULL,
  codRole VARCHAR(15) NOT NULL,
  codPerfil VARCHAR(15) NOT NULL,
  estado VARCHAR(20) NOT NULL,
  nombreRol VARCHAR(20) NOT NULL,
  created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
) AUTO_INCREMENT=2;


-- drop table users

DESCRIBE users;

INSERT INTO users (id, fullname, email, password, tipoDoc,  numDoc,  codCliente,  codRole,  codPerfil,  estado, nombreRol) 
  VALUES (1, 'DEMO', 'DEMO@gmail.com', '123456', 'DNI', '78954621', 'CC001', 'CR001', 'CP001', 'Activo', 'User');

SELECT * FROM users;

-- LINKS TABLE
ALTER TABLE links (
  id INT(11) NOT NULL,
  title VARCHAR(150) NOT NULL,
  url VARCHAR(255) NOT NULL,
  description TEXT,
  nomCategoria VARCHAR(20) NOT NULL,
  user_id INT(11),
  created_at timestamp NOT NULL DEFAULT current_timestamp,
  CONSTRAINT fk_user FOREIGN KEY(user_id) REFERENCES users(id)
);

ALTER TABLE links
  ADD PRIMARY KEY (id);

ALTER TABLE links
  MODIFY id INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 2;

DESCRIBE links;

SELECT* FROM links

--  Table Perfil
CREATE TABLE Perfil (
  id INT(11) NOT NULL,
  codPerfil VARCHAR(15) NOT NULL,
  nombrePerfil VARCHAR(15) NOT NULL,
  codCliente VARCHAR(15) NOT NULL
);

ALTER TABLE Perfil
  ADD PRIMARY KEY (id);

ALTER TABLE Perfil
  MODIFY id INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 2;

  DESCRIBE Perfil;

  --  TABLE Roles
CREATE TABLE Roles (
  id INT(11) NOT NULL,
  codRole VARCHAR(15) NOT NULL,
  nombreRol VARCHAR(20) NOT NULL
);

ALTER TABLE Roles
  ADD PRIMARY KEY (id);

ALTER TABLE Roles
  MODIFY id INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 2;

  DESCRIBE Roles;

  --  TABLE Categoria
CREATE TABLE Categorias (
  id INT(11) NOT NULL,
  codCategoria VARCHAR(15) NOT NULL,
  nomCategoria VARCHAR(20) NOT NULL
);

ALTER TABLE Categorias
  ADD PRIMARY KEY (id);

ALTER TABLE Categorias
  MODIFY id INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 2;

  DESCRIBE Categorias;

  --  TABLE Sessions
CREATE TABLE Sessions (
  id INT(11) NOT NULL,
  expires INT(11) NOT NULL,
  data VARCHAR(255) NOT NULL
);

ALTER TABLE Sessions
  ADD PRIMARY KEY (id);

ALTER TABLE Sessions
  MODIFY id INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 2;

  DESCRIBE Sessions;

    --  TABLE clientes
CREATE TABLE Clientes (
  id INT(11) NOT NULL,
  codCliente VARCHAR(15) NOT NULL,
  ruc VARCHAR(20) NOT NULL,
  empresa VARCHAR(20) NOT NULL,
  logo VARCHAR(20) NOT NULL
);

ALTER TABLE Clientes
  ADD PRIMARY KEY (id);

ALTER TABLE Clientes
  MODIFY id INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 2;

  DESCRIBE Clientes;

 --  TABLE asigreportes
CREATE TABLE asigreportes (
  id INT(11) NOT NULL,
  codReporte VARCHAR(15) NOT NULL,
  codPerfil VARCHAR(20) NOT NULL
);

ALTER TABLE asigreportes
  ADD PRIMARY KEY (id);

ALTER TABLE asigreportes
  MODIFY id INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 2;

  DESCRIBE asigreportes;
