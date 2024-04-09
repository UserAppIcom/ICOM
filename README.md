# ICOM
#  App reportes node  Mysql



cd nodejs-mysql-links
docker-compose up
```

 visita http://localhost:4000

### Manual Instalacion

```
mysql -u MYUSR "-pMYPASSWORD" < ./database/db.sql # create database
npm i
npm run build
npm start
```

## Estructura de archivos

- base de datos, es la carpeta con todas las consultas SQL, puedes usarla para recrear la base de datos para esta aplicación
- src, es todo el código para la aplicación Backend y Frontend
- documentos

## Variables de entorno

- PUERTO

## Versiones antiguas de este proyecto



## Todo

1. [ ] Add docker compose production build
1. [ ] Add nodemailer for transactional emails

## Tools

- Nodejs
- Mysql
- Babel
- Docker
<<<<<<< HEAD
=======


>>>>>>> 7db0420d9f22ffc23a6f56e7547880706c9f1eb0
