const pool = require("../util/bd");

// Single Product
const getProduct = async (id) => {
  try {
    const query = "SELECT id, product_name, long_description, price, image FROM ?? WHERE id = ?";
    const params = [process.env.TABLA_PRODUCT, id];
    const rows = await pool.query(query,params);
      return rows[0];
  } catch ( error ) {
        console.log(error);
    }
};

// Products - Tienda online
const getProducts = async () => {
  try {
    const query = "SELECT id, image, product_name, price, description FROM ??";
    const rows = await pool.query(query, process.env.TABLA_PRODUCT);
      return rows;
  } catch (error) {
      console.log(error);
  }
};

module.exports = {
  getProducts,
  getProduct
};