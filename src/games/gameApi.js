const express = require('express');
const app = express();
// const cors = require('cors');
const fs = require('fs');
const path = require('path');
const querystring = require('querystring');
// const bodyParser = require('body-parser');
const commonSql = require('../db/commonSql.js');
const sql = require('../db/sql.js');

// api接口
const interfaceApi = require('../db/interfaceApi.js');

// 跨域配置
app.all('*', function (req, res, next) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header("Access-Control-Allow-Headers", "X-Requested-With");
  res.header("Access-Control-Allow-Methods", "PUT,POST,GET,DELETE,OPTIONS");
  res.header("X-Powered-By", ' 3.2.1');
  res.header("Content-Type", "application/json;charset=utf-8");
  next();
});

let statusCode = {
  code: 200,
  data: null,
  msg: 'successfully!'
};

// 查询所有英雄数据
app.get(interfaceApi.allGameRoleList, (req, res) => {
  if (req.query.user_id) {
    let sqlInfo = sql.selectSql; // 查询语句
    let ival = [req.query.user_id]; // 用户id

    commonSql.poolConn(sqlInfo, ival, (result) => {
      if (result) {
        statusCode.data = null;
        statusCode.data = result;
        res.send(statusCode);
      }
    });
  }
});

// 根据user_id，game_fav查询不同喜欢程度英雄数据
app.get(interfaceApi.difFavDegree, (req, res) => {
  if (req.query) {
    let sqlInfo = sql.selectFavDegree;
    let ival = [req.query.user_id, req.query.game_fav];
    commonSql.poolConn(sqlInfo, ival, (result) => {
      if (result) {
        statusCode.data = null;
        statusCode.data = result;
        res.send(statusCode);
      }
    })
  }
});

// 添加一条英雄数据
app.post(interfaceApi.addGameRole, (req, res) => {
  if (req.query) {
    let sqlInfo = sql.insertSql;
    let ival = [{
      // game_id: req.query.game_id,
      game_role: req.query.game_role,
      game_power: req.query.game_power,
      game_total: req.query.game_total,
      game_fav: req.query.game_fav,
      user_id: req.query.user_id
    }];
    commonSql.poolConn(sqlInfo, ival, (result) => {
      if (result) {
        res.send(statusCode);
      }
    })
  }
});

// 修改一条英雄数据
app.post(interfaceApi.updateGameRole, (req, res) => {
  if (req.query) {
    let sqlInfo = sql.updateSql;
    let reqObj = req.query;
    let ival = [reqObj.game_role, reqObj.game_power, reqObj.game_total, reqObj.game_fav, reqObj.game_id, reqObj.user_id];
    commonSql.poolConn(sqlInfo, ival, (result) => {
      if (result) {
        res.send(statusCode);
      }
    });
  }
});

// 删除一条英雄数据
app.get(interfaceApi.deleteGameRole, (req, res) => {
  if (req.query) {
    let sqlInfo = sql.deleteSql;
    let reqObj = req.query;
    let ival = [reqObj.game_id, reqObj.user_id];
    commonSql.poolConn(sqlInfo, ival, (result) => {
      if (result) {
        res.send(statusCode);
      }
    })
  }
});

app.listen(3000, () => {
  console.log('server build successfully!');
})