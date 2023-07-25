const { default: Carts } = require("../models/Carts");

const store = async (req, res) => {
  console.log("body", req.body);
  
  await Carts.save(req.body);

  res.send({ msg: "data inserted" });
};
const index = async (req, res) => {
  // console.log("body", req.body);

  let data =await Carts.getdata();

  res.send(data);
};
const onedata = async (req, res) => {
  // console.log("body", req.body);
  const id = req.params.id;
  let data =await Carts.getonedata(id);

  res.send(data);
};
const update = async (req, res) => {
  // console.log("body", req.body);
  // console.log(req.body)
  // console.log(req.params.id)
  const id = req.params.id;
  const data = req.body;
  await Carts.updatedata(data,id)

  res.send({ msg: "data updated" });
};
const deletedata = async (req, res) => {
  // console.log("body", req.body);
  // console.log(req.body)
  console.log(req.params.id)
  const id = req.params.id;
  // const data = req.body;
  await Carts.deletedata1(id)

  res.send({ msg: "data deleted" });
};


exports.default={
  index,
  store,
  onedata,
  update,
  deletedata
}
