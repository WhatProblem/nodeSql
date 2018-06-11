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
  data: {},
  msg: 'successfully!'
};

const sqlFun = {
  // 所有数据
  getAllCounts(req) {
    if (req.query) {
      let sqlInfo = sql.AllCounts;
      let reqObj = req.query;
      let ival = [reqObj.user_id];
      return new Promise((resolve, reject) => {
        commonSql.poolConn(sqlInfo, ival, (result) => {
          if (result) {
            resolve(result[0]['COUNT(*)']);
          }
        });
      });
    }
  },

  // 查询所有英雄数据
  getAllGameRoleData(req, res) {
    if (req.query.user_id) {
      let reqObj = req.query;
      let sqlInfo = sql.selectSql; // 查询语句
      let limitTotals = parseInt(reqObj.pages_total); // 每次查询总数
      let limitStart = parseInt((reqObj.pages_index - 1) * limitTotals); // 查询开始位置
      let ival = [reqObj.user_id, limitStart, limitTotals];
      commonSql.poolConn(sqlInfo, ival, (result) => {
        if (result) {
          sqlFun.getAllCounts(req).then((respTotals) => {
            statusCode.data = {};
            statusCode.data.totals = respTotals;
            statusCode.data.data = result;
            res.send(statusCode);
          })
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
          sqlFun.getTotalCounts(req).then((respTotals) => {
            statusCode.data = {};
            statusCode.data.totals = respTotals;
            statusCode.data.data = result;
            res.send(statusCode);
          });
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
        user_id: req.query.user_id,
        game_desc: req.query.game_desc,
        user_name: req.query.user_name
      }];
      commonSql.poolConn(sqlInfo, ival, (result) => {
        if (result) {
          res.send(statusCode);
        }
      })
    }
  },

  // 修改一条英雄数据
  updateGameRole(req, res) {
    if (req.query) {
      let sqlInfo = sql.updateSql;
      let reqObj = req.query;
      let ival = [reqObj.game_role, reqObj.game_fav, reqObj.game_power, reqObj.game_total, reqObj.game_desc, reqObj.game_id, reqObj.user_id];
      commonSql.poolConn(sqlInfo, ival, (result) => {
        if (result) {
          statusCode.data = {};
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
  },

  // 获取符合条件的总条数
  getTotalCounts(req) {
    if (req.query) {
      let sqlInfo = sql.totalCounts;
      let reqObj = req.query;
      let ival = [reqObj.game_fav, reqObj.user_id];
      return new Promise((resolve, reject) => {
        commonSql.poolConn(sqlInfo, ival, (result) => {
          if (result) {
            // statusCode.data = {};
            // statusCode.data = result[0]['COUNT(*)'];
            // res.send(statusCode);
            resolve(result[0]['COUNT(*)']);
          }
        });
      });
    }
  },

  // 获取符合条件数据与总数
  getDataAndTotals(req, res) {
    if (req.query) {
      let sqlInfo = sql.getDataAndTotals;
      let reqObj = req.query;
      let limitTotals = parseInt(reqObj.pages_total); // 每次查询总数
      let limitStart = parseInt((reqObj.pages_index - 1) * limitTotals); // 查询开始位置
      let ival = [reqObj.user_id, reqObj.game_fav, limitStart, limitTotals];
      commonSql.poolConn(sqlInfo, ival, (result) => {
        if (result) {
          sqlFun.getTotalCounts(req).then((respTotals) => {
            statusCode.data = {};
            statusCode.data.totals = respTotals;
            statusCode.data.data = result;
            res.send(statusCode);
          });
        }
      })
    }
  },

  // 模糊查询
  getSearchRole(req, res) {
    if (req.query) {
      let reqObj = req.query;
      new Promise((resolve, reject) => {
        let sqlInfo = sql.searchSql;
        let ival = [reqObj.user_id, '%' + reqObj.game_role + '%'];
        commonSql.poolConn(sqlInfo, ival, (result) => {
          let respTotals = result['length'];
          resolve(respTotals);
        });
      }).then((resp) => {
        let sqlInfo = sql.searchSql + ' LIMIT ?, ?';
        let limitTotals = parseInt(reqObj.pages_total); // 每次查询总数
        let limitStart = parseInt((reqObj.pages_index - 1) * limitTotals); // 查询开始位置
        let ival = [reqObj.user_id, '%' + reqObj.game_role + '%', limitStart, limitTotals];
        commonSql.poolConn(sqlInfo, ival, (result) => {
          let searchTotals = resp;
          statusCode.data = {};
          statusCode.data.totals = searchTotals;
          statusCode.data.data = result;
          res.send(statusCode);
        });
      });
    }
  }
}

module.exports = sqlFun;