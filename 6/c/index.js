const path = require("path");
const express = require("express");
const bodyParser = require("body-parser");
const mysql = require("mysql");
const hbs = require("handlebars");
const app = express();

app.use(bodyParser.json());

const conn = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "arkademi"
});

conn.connect(err => {
  if (err) throw err;
  console.log("mysql connected....");
});

//---------------------------------------------------------------
app.get("/", (req, res) => {
  let sql =
    "SELECT cas.name AS cashier, prod.name AS product, cate.name AS category, prod.price FROM cashier cas JOIN product prod ON cas.id = prod.id_cashier JOIN category cate ON cate.id = prod.id_category";
  let query = conn.query(sql, (err, result) => {
    if (err) throw err;
    res.send(JSON.stringify({ status: 200, error: null, data: result }));
  });
});

app.get("/product", (req, res) => {
  let sql = "SELECT * FROM product";
  let query = conn.query(sql, (err, result) => {
    if (err) throw err;
    res.send(JSON.stringify({ status: 200, error: null, data: result }));
  });
});

app.get("/category", (req, res) => {
  let sql = "SELECT * FROM category";
  let query = conn.query(sql, (err, result) => {
    if (err) throw err;
    res.send(JSON.stringify({ status: 200, error: null, data: result }));
  });
});

app.get("/cashier", (req, res) => {
  let sql = "SELECT * FROM cashier";
  let query = conn.query(sql, (err, result) => {
    if (err) throw err;
    res.send(JSON.stringify({ status: 200, error: null, data: result }));
  });
});

app.post("/product/:id/:name/:idcategory/:idcashier", (req, res) => {
  let sql =
    "INSERT INTO product SET id=" +
    req.params.id +
    " name='" +
    req.params.name +
    "' id_category=" +
    req.params.idcategory +
    " id_cashier=" +
    req.params.idcashier +
    "";
  let query = conn.query(sql, (err, result) => {
    if (err) throw err;
    res.send(JSON.stringify({ status: 200, error: null, data: result }));
  });
});

app.put("/product/:id/:name/:idcategory/:idcashier", (req, res) => {
  let sql =
    "UPDATE product SET name='" +
    req.params.name +
    "' id_category=" +
    req.params.idcategory +
    " id_cashier=" +
    req.params.idcashier +
    " WHERE id=" +
    req.params.id +
    "";
  let query = conn.query(sql, (err, result) => {
    if (err) throw err;
    res.send(JSON.stringify({ status: 200, error: null, data: result }));
  });
});

app.delete("/product/:id", (req, res) => {
  let sql = "DELETE FROM product WHERE id=" + req.params.id + "";
  let query = conn.query(sql, (err, result) => {
    if (err) throw err;
    res.send(JSON.stringify({ status: 200, error: null, data: result }));
  });
});

//listener
const listener = app.listen(3000, function() {
  console.log("Your app is listening on port " + listener.address().port);
});
