const { default: HsnCode } = require("../models/HsnCode");

const store = async (req, res) => {
  console.log("body", req.body);
  await HsnCode.save(req.body);
  res.send({ msg: "data inserted" });
};
const index = async (req, res) => {
  let data =await HsnCode.getdata();
  res.send(data);
};
const onedata = async (req, res) => {
  const id = req.params.id;
  let data =await HsnCode.getonedata(id);
  res.send(data);
};
const update = async (req, res) => {
  const id = req.params.id;
  const data = req.body;
  await HsnCode.updatedata(data,id)
  res.send({ msg: "data updated" });
};
const deletedata = async (req, res) => {
  console.log(req.params.id)
  const id = req.params.id;
  await HsnCode.deletedata1(id)
  res.send({ msg: "data deleted" });
};


exports.default={
  index,
  store,
  onedata,
  update,
  deletedata
}
