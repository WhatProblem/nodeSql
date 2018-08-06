const express = require('express');
const app = express();
const fs = require('fs');
const path = require('path');
const bodyParser = require('body-parser');

// api接口
const apiRouter = require('./src/api.js');


// 跨域配置
app.all('*', function (req, res, next) {
  res.header("Access-Control-Allow-Origin", "*");
  // res.header("Access-Control-Allow-Headers", "X-Requested-With");
  res.header("Access-Control-Allow-Methods", "PUT,POST,GET,DELETE,OPTIONS");
  res.header("X-Powered-By", ' 3.2.1')
  res.header("Content-Type", "application/json;charset=utf-8");
  res.header("Access-Control-Allow-Credentials", "true");
  // res.header("Access-Control-Allow-Methods", "*");
  res.header("Access-Control-Allow-Headers", "Content-Type,Access-Token, Authorization");
  res.header("Access-Control-Expose-Headers", "*");
  next();
});

app.use(bodyParser.json());
app.use(apiRouter);

app.listen(9000, () => {
  console.log('application run port: 9000');
})