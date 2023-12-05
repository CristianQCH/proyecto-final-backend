import { ProductMD } from "../models/productsMD.js";
import { isValidUUID } from "../utils/isValidUUID.js";

export class ProductCT {
    static async getAll(req, res){
        const {category} = req.query;
        const productCategory = await ProductMD.getAll(category);
        productCategory
        ?res.status(200).json(productCategory)
        :res.status(404).json({message: "Product not found"})
    };

    static async getAllForTitle(req, res){
        const {title} = req.params;
        const productTitle = await ProductMD.getAllForTitle(title);
        !productTitle
        ? res.status(404).json({message: "Product by title not found"})
        : res.status(200).json(productTitle)
    };

    static async getById(req, res) {
        const {id} = req.params;
        const isValidID = isValidUUID(id);
        if (!isValidID) return res.status(422).json({message: "not valid ID"});
        //solucionar problema, me devuelve un arrelo vacio
        const product = await ProductMD.getById(id);
        if (!product.length) return res.status(404).json({message: "Product by id not found"});
        res.status(200).json(product);
    };

    static async deleteOne(req, res){
        const {id} = req.params;
        const isValidID = isValidUUID(id);
        if (!isValidID) return res.status(422).json({message: "not valid ID"});
        //sucede el mismo problema que en el getById
        const result = await ProductMD.deleteOne(id);
        if (!result) return res.status(404).json({message: "Product para eliminar not found"})
        res.status(200).json({message: "Borrado exitoso"})
    }
    static async addOne(req, res){
        const productCreated = await ProductMD.addOne(req.body);
        productCreated
        ? res.status(201).json({message: "Product created"})
        : res.status(500).json({message: "Internal server error"})
    }
    static async updateOne(req, res){
        const {id} = req.params;
        const isValidID = isValidUUID(id);
        if (!isValidID) return res.status(422).json({message: "not valid ID"});
        const [isProduct, _info] = await ProductMD.getById(id);

        if (!isProduct) return res.status(404).json({message: "Product not found"})
        const updatedProduct = await ProductMD.updateOne(id, req.body)
        !updatedProduct?
        res.status(500).json({message: "Internal server error"})
        : res.status(200).json({message: "Products Updated"})
    }
}