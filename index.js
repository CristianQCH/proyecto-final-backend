import express from "express";
import {router as productsRT} from "./src/routes/productsRT.js"
// import {router as usersRT} from "./src/routes/usersRT.js"


const PORT = process.env.PORT ?? 3040
const app = express();
app.use(express.json());
app.listen(PORT, err => {
    console.log(
        err 
        ? `Ocurio un error: ${err}`
        : `Servidor corre en http://localhost:${PORT}`
    );
});
//Se requiere usar la arquitectura MVC para tener por separado la logica de lo demas para un mejor mantenimiento, M (Modelo(Bace de Datos)), V (Vista(Presentacion o FrontEnd)), C (Controlador(Logica)) 


app.use("/products", productsRT)
// app.use("/users", usersRT)

//9/11 59:21




