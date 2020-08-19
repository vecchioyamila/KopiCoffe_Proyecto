const pool = require("../util/bd");

const create = async (obj)=> {
    console.log(obj);
     const query = "INSERT INTO ?? set ?";
     const params = [process.env.TABLA_USER_INFO,obj];
     return await pool.query(query,params);
    //  return rows.insertId;
  };

module.exports = {
    create
}