const express = require("express");
const { default: routes } = require("./app/routes");
// const bodyParser = require('body-parser');
const { default: middleware } = require("./app/middlewares/middleware");
const port = 3020
const app = express();

app.use(express.json())
app.use(express.urlencoded({extended: true}));
app.use(middleware)
// app.use(bodyParser.urlencoded({  }));
// app.use(bodyParser.json());
  app.get("/", function (req, res) {
    res.send({ msg: "Hello World" });
  });
routes.routes(app)



app.listen(port , () =>{
  console.log(`server is running on `,process.env.DOMAIN+port)
})
  