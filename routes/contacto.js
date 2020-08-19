const express = require("express");
const router = express.Router();
const { main } = require("../util/mail");
router.get("/", (req, res) => {
  res.render("contacto");
});

router.post("/", async (req, res) => {
  const { email, mensaje } = req.body;
  let to = process.env.ADMIN_MAIL;
  let subject = "Nuevo mensaje desde el sitio web";
  let html = `Se contactaron desde ${email} con la siguiente consulta : ${mensaje}`;
  const htmlCustumer = "Su mensaje ha sido enviado";

  const finalObject = {
    to,
    subject,
    html,
    htmlCustumer, 
};
console.log(finalObject);

const resultMail = await main({to,subject,html});
console.log(resultMail);
to = email;
html = htmlCustumer;
const resultMailCustumer = await main({to,subject,html});
console.log(resultMailCustumer);
res.render("contacto",{ 
message: "Mensaje enviado, en breve nos contactaremos",
});
});

module.exports = router;