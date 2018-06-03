const express = require('express');
const app = express();
const router = app.router();
const fs = require('fs');
const path = require('path');
const bodyParser = require('body-parser');

const testData = [
  {
    game_id: 3,
    game_role: '狗头',
    game_power: 13000,
    game_total: 600,
    game_fav: 0,
    user_id: 1
  }
];

// 跨域配置
app.all('*', function (req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "X-Requested-With");
    res.header("Access-Control-Allow-Methods", "PUT,POST,GET,DELETE,OPTIONS");
    res.header("X-Powered-By", ' 3.2.1')
    res.header("Content-Type", "application/json;charset=utf-8");
    next();
});


app.listen(3000, () => {
  console.log('server build!');
})