import {Router} from "express";
export const router = Router();
import { ProductCT } from "../controllers/productsCT.js";
//import { uploadFile } from "../utils/handleStorage.js";


//listado de todos los productos
router.get("/", ProductCT.getAll);
//busqueda por titulo
router.get("/:title", ProductCT.getAllForTitle);
//identificador por id
router.get("/id/:id", ProductCT.getById)
//eliminar producto por id
router.delete("/:id", ProductCT.deleteOne)
//agregar nuevo producto
router.post("/", ProductCT.addOne)
//Actualizar producto
router.patch("/:id", ProductCT.updateOne)