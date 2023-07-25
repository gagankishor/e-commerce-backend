const { default: OrdersProducts } = require("../models/OrdersProducts");

const store = async (req, res) => {
  console.log("body", req.body);
  
  await OrdersProducts.save(req.body);

  res.send({ msg: "data inserted" });
};
const index = async (req, res) => {
  // console.log("body", req.body);

  let data =await OrdersProducts.getdata();

  res.send(data);
};
const onedata = async (req, res) => {
  // console.log("body", req.body);
  const id = req.params.id;
  let data =await OrdersProducts.getonedata(id);

  res.send(data);
};
const update = async (req, res) => {
  // console.log("body", req.body);
  // console.log(req.body)
  // console.log(req.params.id)
  const id = req.params.id;
  const data = req.body;
  await OrdersProducts.updatedata(data,id)

  res.send({ msg: "data updated" });
};
const deletedata = async (req, res) => {
  // console.log("body", req.body);
  // console.log(req.body)
  console.log(req.params.id)
  const id = req.params.id;
  // const data = req.body;
  await OrdersProducts.deletedata1(id)

  res.send({ msg: "data deleted" });
};


exports.default={
  index,
  store,
  onedata,
  update,
  deletedata
}
