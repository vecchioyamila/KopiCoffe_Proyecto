const pool = require("../util/bd");

const getCarrito = async() => {
    try {
        const query = "SELECT * FROM ?? JOIN ?? ON salesitems.id_product = product.id WHERE salesitems.status = 0";
        const params = [process.env.TABLA_SALES_ITEMS, process.env.TABLA_PRODUCT];
        const rows = await pool.query(query,params);
        console.log(rows);
        return rows;
    } catch (error) {
        console.log(error)
    }
};

const agregarItem = async(id, price) => {
    try {
        const query = "INSERT INTO ?? (id_product, price, quantity, status) " +
                      "VALUES (?, ?, 1, 0)"
        const params = [process.env.TABLA_SALES_ITEMS, id, price]
        const rows = await pool.query(query,params);
        console.log(rows);
        return rows;
    } catch (error) {
        console.log(error);
    }
};

const puedoAgregarItem = async(id) => {
    try {
        const query = "SELECT 1 FROM ?? WHERE status = 0 AND id_product = ?"
        const params = [process.env.TABLA_SALES_ITEMS, id]
        const rows = await pool.query(query,params);
        console.log(rows);
        return (rows.length > 0) ? false : true;
    } catch (error) {
        console.log(error);
    }
};

const eliminarItem = async (id) => {
    const query = "DELETE FROM ?? WHERE id_product = ? AND status = 0";
    const params = [process.env.TABLA_SALES_ITEMS, id];
    return await pool.query(query, params);
};

module.exports = {
    agregarItem,
    eliminarItem,
    getCarrito,
    puedoAgregarItem
};