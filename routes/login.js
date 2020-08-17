const express = require('express');
const router = express.Router();
const {logueado} = require("../models/login");

router.get("/", async (req, res) => {
    try {
        res.render("login");
    }
    catch (error) {
        console.log(error);
    }
});

router.post("/", async (req,res) =>{
    let usuario = req.body.usuario;
    let password = req.body.password;
    const resultado = await logueado(usuario, password);
    console.log(resultado);
    if(resultado.length == 1){
        console.log('logueado');
        req.session.userId = resultado[0].id_userinfo;
        req.session.usuario = usuario;
        req.session.iniciado = true;
        res.render("index", {usuario});
    } 
    else {
        console.log('usuario o contraseña incorrectas');
        res.render("login",{ 
            message: "usuario o contraseña incorrectas",
            });
    }
});

module.exports = router;

