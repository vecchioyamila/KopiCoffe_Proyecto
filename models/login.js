const pool = require("../util/bd");

const logueado = async(usuario, pass) => {
    try{
    const query = "SELECT * FROM ?? WHERE usuario = ? AND password = ?"
    const params = [process.env.TABLA_USER_INFO, usuario, pass];
    return await pool.query(query, params);
    }
    catch(error){
        console.log(error)
    }
};

module.exports = {
    logueado
}