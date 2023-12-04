import {connection} from "../../db_config.js"

export class ProductMD {

    //devulve todos los productos
    static async getAll(category){
        if (!category) {
            const [products, _info] = await connection.query(
                `SELECT brand, image,  price, stock, title, category, BIN_TO_UUID(id) as id FROM products`); 
        return products.length ? products : null;
        }

        //devuelve los productos por categoria
        const [products, _info] = await connection.query(
            `SELECT brand, image, price, stock, title, category FROM products WHERE category = "${category}"`
        );
        return products.length ? products : null;
    }

    //devuelve por titulo
    static async getAllForTitle(title){
        const sql = `SELECT brand, image, price, stock, title, category FROM products WHERE title LIKE ?`;
        const searchByTitle = `%${title}%`;
        if (!title) {
            const [products, _info] = await connection.query(`SELECT brand, image,  price, stock, title, category FROM products`);
            return products.length ? products : null;
        }
        const [products, _info] = await connection.query(sql, [searchByTitle]);
        return products.length ? products : null;
    }
    //devuelve por id
    static async getById(id) {
        const [products, _info] = await connection.query(`SELECT brand, image, price, stock, title, category, BIN_TO_UUID(id) as id FROM products WHERE id = UUID_TO_BIN(?)`, [id]);
        return products;
    }
    //elimina un objeto por id
    static async deleteOne(id) {
        const [result] = await connection.query(`DELETE FROM products WHERE products.id = UUID_TO_BIN(?)`, [id]);
        return result.affectedRows;
    }
    //agrega un objeto nuevo
    static async addOne(products){
        const {brand, image, price, stock, title, category} = products;
        const result = await connection.query(`INSERT INTO products (brand, image, price, stock, title, category) VALUES (?,?,?,?,?,?)`,[brand, image, price, stock, title, category]);
        return result ? result : null;

    }
}