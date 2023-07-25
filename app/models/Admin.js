const { default: DbConnection } = require("../configs/DbConnection");

const table = "enod_admins";

const save = async (data) => {
  await DbConnection.query("INSERT INTO `" + table + "` SET ?", [data]);
};

const getdata = async () => {
  console.log("All Data Feached");
  return await DbConnection.query("SELECT * FROM `" + table + "`");
};
const getonedata = async (id) => {
  console.log("one Data Feached");

  let data = await DbConnection.query(
    "SELECT * FROM `" + table + "` where `id`= " + id
  );
  return data[0];
};
const updatedata = async (data, id) => {
  await DbConnection.query(`UPDATE ` + table + ` SET ?  WHERE id = ${id}`, [
    data,
  ]);
  console.log(" Data Updated");
};
const deletedata1 = async (id) => {
  await DbConnection.query(`DELETE FROM  ` + table + ` WHERE id = ${id}`);
};

exports.default = {
  save,
  getdata,
  getonedata,
  updatedata,
  deletedata1,
};
