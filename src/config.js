import { config } from "dotenv";
config();


export const database = {
  connectionLimit: 10,
  host: process.env.DATABASE_HOST || "serviceconectionaws.czmceqekcjao.us-east-2.rds.amazonaws.com",
  user: process.env.DATABASE_USER || "admin",
  password: process.env.DATABASE_PASSWORD || "dXAraoB4C$&5",
  database: process.env.DATABASE_NAME || "linksdb",
  port: process.env.DATABASE_PORT || 3306,
};


export const port = process.env.PORT || 4000;

export const SECRET = process.env.SECRET || 'some secret key';

