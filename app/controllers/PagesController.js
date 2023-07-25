const { default: Pages } = require("../models/Pages");

const store = async (req, res) => {
  console.log("body", req.body);
  
  await Pages.save(req.body);

  res.send({ msg: "data inserted" });
};
const index = async (req, res) => {
  // console.log("body", req.body);

  let data =await Pages.getdata();

  res.send(data);
};
const onedata = async (req, res) => {
  // console.log("body", req.body);
  const id = req.params.id;
  let data =await Pages.getonedata(id);

  res.send(data);
};
const update = async (req, res) => {
  // console.log("body", req.body);
  // console.log(req.body)
  // console.log(req.params.id)
  const id = req.params.id;
  const data = req.body;
  await Pages.updatedata(data,id)

  res.send({ msg: "data updated" });
};
const deletedata = async (req, res) => {
  // console.log("body", req.body);
  // console.log(req.body)
  console.log(req.params.id)
  const id = req.params.id;
  // const data = req.body;
  await Pages.deletedata1(id)

  res.send({ msg: "data deleted" });
};


exports.default={
  index,
  store,
  onedata,
  update,
  deletedata
}
