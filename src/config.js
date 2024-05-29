import { config } from "dotenv";
config();


export const database = {
  connectionLimit: 10,
  host: process.env.DATABASE_HOST || "b4pjl8vtmhvyealxqgpm-mysql.services.clever-cloud.com",
  user: process.env.DATABASE_USER || "ui9vlhx39ltyv7i7",
  password: process.env.DATABASE_PASSWORD || "tN2zupm1wcDmbYnu9grQ",
  database: process.env.DATABASE_NAME || "b4pjl8vtmhvyealxqgpm",
  port: process.env.DATABASE_PORT || 3306,
};


export const port = process.env.PORT || 4000;

export const SECRET = process.env.SECRET || 'some secret key';

