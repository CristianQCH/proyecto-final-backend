import express from "express";
import {router as productsRT} from "./src/routes/productsRT.js"
import cors from 'cors'
// import {router as usersRT} from "./src/routes/usersRT.js"


const PORT = process.env.PORT ?? 3001
const app = express();
app.use(express.json());
app.use(cors())
app.listen(PORT, err => {
    console.log(
        err 
        ? `Ocurio un error: ${err}`
        : `Servidor corre en http://localhost:${PORT}`
    );
});
app.use("/products", productsRT)
//app.use("/users", usersRT)



