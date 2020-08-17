const express = require("express");
const router = express.Router();
const { getProduct } = require("./../models/tienda");
const { getProducts } = require("./../models/tienda");

// Single Product
router.get("/single/:id", async (req,res)=> {
  const id = req.params.id;
  const product = await getProduct(id);
  console.log(product);
  res.render("tiendaProducto", {
    product
  });
});

// Products - Tienda online
router.get("/", async (req, res) => {
  const products = await getProducts();
  console.log(products);
  res.render("tienda", {
    products
  });
});

module.exports = router;