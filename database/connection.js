import Sequelize from "sequelize";
import config from "./config/config.mjs";
import mysql2 from "mysql2"
let sequelize;
if (process.env.NODE_ENV === "production") {
	sequelize = new Sequelize({
		username: process.env.DB_USERNAME,
		password: process.env.DB_PASSWORD_PROD,
		database: process.env.DB_NAME_PRODUCTION,
		host: process.env.DB_HOSTNAME,
		port: process.env.DB_PORT_PROD,
		logging: false,
		dialect: "mysql",
		dialectModule: mysql2
	});
} else {
	sequelize = new Sequelize(config.development);
}

const connection = sequelize;

export default connection;
