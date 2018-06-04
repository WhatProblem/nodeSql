const express = require('express');
const app = express();
// const cors = require('cors');
const fs = require('fs');
const path = require('path');
const querystring = require('querystring');
// const bodyParser = require('body-parser');
const commonSql = require('../db/commonSql.js');
const sql = require('../db/sql.js');

// 自定义状态码
let statusCode = {
  code: 200,
  data: null,
  msg: 'successfully!'
};

module.exports = {
  // 查询所有英雄数据
  getAllGameRoleData(req, res) {
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
  },

  // 根据user_id，game_fav查询不同喜欢程度英雄数据
  getDifFavDegData(req, res) {
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
  },

  // 添加一条英雄数据
  addSingleGameRole(req, res) {
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
  },

  // 修改一条英雄数据
  updateGameRole() {
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
  },

  // 删除一条英雄数据
  deleteGameRole(req, res) {
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
  }
}