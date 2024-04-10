import { config } from "dotenv";
config();


export const database = {
  connectionLimit: 10,
  host: process.env.DATABASE_HOST || "icom01.mysql.database.azure.com",
  user: process.env.DATABASE_USER || "admin32",
  password: process.env.DATABASE_PASSWORD || "dXAraoB4C$&5",
  database: process.env.DATABASE_NAME || "linksdb",
  port: process.env.DATABASE_PORT || 3306,
};


export const port = process.env.PORT || 4000;

export const SECRET = process.env.SECRET || 'some secret key';

