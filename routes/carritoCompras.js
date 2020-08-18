const express = require('express');
const router = express.Router();
const {getCarrito, agregarItem, puedoAgregarItem, eliminarItem} = require('../models/carritoCompras');

router.get("/", async (req, res) => {
    try {
        // if(req.session.iniciado == true){
          // let id_usuario = req.session.userId;
          const salesitems = await getCarrito(); //array de jsons, cada item es un producto  

          let carritoPrecioFinal = 0 //var aux q guarda el precio total de todo lo q voy a comprar
          if(salesitems) {
            salesitems.forEach(item => {
              carritoPrecioFinal = carritoPrecioFinal + item.precio;
            });
          }
          console.log(carritoPrecioFinal);
          res.render("carritoCompras", { salesitems, carritoPrecioFinal });
        // }
        // else{
        //     res.send("Inicie sesion para ver el carrito");
        // }
    } catch (error) {
        console.log(error);
  }
});

router.get("/alta/:id/:price", async (req, res) => {
  try {
    // if(req.session.iniciado == true){
      const { id, price } = req.params;
      const validation = await puedoAgregarItem(id);
      if(validation) {
        console.log(req.session);
        const result = await agregarItem(id, price);
        res.redirect("/carritoCompras");
      } else {
        res.send("Este producto ya fue agregado al carrito");
      } 
    // }
    // else{
    //     res.send("Inicie sesion para ver el carrito");
    // }
  } catch (error) {
      console.log(error);
  }
});

router.get("/baja/:id", async (req, res) => {
    try {
      // if(req.session.iniciado == true){
        const { id } = req.params;
        const result = await eliminarItem(id);
        res.redirect("/carritoCompras");
      // }
      // else{
      //     res.send("Inicie sesion para ver el carrito");
      // }
    } catch (error) {
        console.log(error);
  }
});

module.exports = router;