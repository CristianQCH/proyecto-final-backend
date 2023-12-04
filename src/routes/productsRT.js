import {Router} from "express";
export const router = Router();
import { ProductCT } from "../controllers/productsCT.js";

router.get("/", ProductCT.getAll);

router.get("/:title", ProductCT.getAllForTitle);

router.get("/id/:id", ProductCT.getById)

router.delete("/:id", ProductCT.deleteOne)

router.post("/", ProductCT.addOne)

router.patch("/:id", ProductCT.updateOne)