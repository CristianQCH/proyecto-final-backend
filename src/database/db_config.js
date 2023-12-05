import mysql from "mysql2/promise.js";

const dbConfig = {
    host: 'localhost',
    user: 'root',
    password: process.env.DB_PASS,
    port: 3306,
    database: 'tecno_compra'
}
export const connection = await mysql.createConnection(dbConfig);
connection.connect(err => {
    err ? console.log(err) : console.log("Connected to database")
});

//Intentar con pool de conexiones
