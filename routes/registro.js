const express = require("express");
const router = express.Router();
const {create} = require("../models/registro");

router.get("/", async (req,res) => {
    try {
        res.render("registro");
    } 
    catch (error) {
        console.log(error);
    }
});

router.post("/", async (req,res,next) =>{
    try{
        const { name, surname, email, usuario, password, dni, address, phone} = req.body;
        const object = {
            name: name,
            surname: surname,
            email: email,
            usuario: usuario,
            password: password,
            dni: dni,
            address: address,
            phone: phone,
        };
        const result = await create(object);
        console.log(result);
        res.redirect("/login");
    }
    catch(error){
        console.log(error);
    }
});

module.exports = router;