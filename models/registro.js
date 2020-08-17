const pool = require("../util/bd");

const create = async (obj)=> {
    console.log(obj);
    // SET -> Se usa cuando se envia un objeto como parametro
     const query = "INSERT INTO ?? set ?";
     // obj debe tener como propiedades del objeto los campos de la tabla
     const params = [process.env.TABLA_USER_INFO,obj];
     return await pool.query(query,params);
    //  return rows.insertId;
  };

module.exports = {
    create
}