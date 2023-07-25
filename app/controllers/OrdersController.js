const { default: Orders } = require("../models/Orders");

const store = async (req, res) => {
  console.log("body", req.body);
  
  await Orders.save(req.body);

  res.send({ msg: "data inserted" });
};
const index = async (req, res) => {
  // console.log("body", req.body);

  let data =await Orders.getdata();

  res.send(data);
};
const onedata = async (req, res) => {
  // console.log("body", req.body);
  const id = req.params.id;
  let data =await Orders.getonedata(id);

  res.send(data);
};
const update = async (req, res) => {
  // console.log("body", req.body);
  // console.log(req.body)
  // console.log(req.params.id)
  const id = req.params.id;
  const data = req.body;
  await Orders.updatedata(data,id)

  res.send({ msg: "data updated" });
};
const deletedata = async (req, res) => {
  // console.log("body", req.body);
  // console.log(req.body)
  console.log(req.params.id)
  const id = req.params.id;
  // const data = req.body;
  await Orders.deletedata1(id)

  res.send({ msg: "data deleted" });
};


exports.default={
  index,
  store,
  onedata,
  update,
  deletedata
}
