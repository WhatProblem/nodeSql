const express = require('express');
const app = express();
const fs = require('fs');
const path = require('path');
const querystring = require('querystring');
const commonSql = require('../db/commonSql.js');
const sql = require('../db/sql.js');
const author = require('../user/user.js');

// 自定义状态码
let statusCode = {
  code: 200,
  data: {},
  msg: 'successfully!'
};

const baseIp = 'http://localhost:9000';

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
  },

  /***********************ng2-lifeStyle部分数据*************************/
  /**
    * @description: 获取home部分popGame部分
    * @param {game_power} 根据影片评分查询
    * @param {user_id} 登录权限
    */
  getPowerGame(req, res) {
    let reqObj = null;
    let ival = null;
    let sqlInfo = null;
    let user_id = null;

    if (author.isAuthor(req).status === 'UNLOGIN' || author.isAuthor(req).status === 'OVERTIME_LOGIN' || author.isAuthor(req).status === 'FORGEY_LOGIN') { // 未登录
      if (req && req.query) {
        reqObj = req.query.game_power;
        ival = [reqObj];
        sqlInfo = sql.getGameDetail;
      }
    } else if (author.isAuthor(req).status === 'LOGINED') {
      if (req && req.query) {
        user_id = author.isAuthor(req).user_id;
        reqObj = req.query.game_power;
        ival = [reqObj];
        sqlInfo = sql.getGameDetail;
      }
    }
    commonSql.poolConn(sqlInfo, ival, (result) => {
      if (result) {
        sqlFun.findGameInfo(user_id, 'gamefav', 'gamelock', 'gamehistory').then(resGame => {
          statusCode.data = {};
          statusCode.data.totals = result.length;
          result = sqlFun.dealPicPath(result);
          if (resGame.length) {
            result.filter((item, index) => {
              for (let i = 0; i < resGame[0].length; i++) {
                if (item['game_id'] == resGame[0][i]['game_id']) {
                  item['game_favorite'] = '1';
                }
              }
            });
            result.filter((item, index) => {
              for (let i = 0; i < resGame[1].length; i++) {
                if (item['game_id'] == resGame[1][i]['game_id']) {
                  item['game_lock'] = '1';
                }
              }
            });
            result.filter((item, index) => {
              for (let i = 0; i < resGame[2].length; i++) {
                if (item['game_id'] == resGame[2][i]['game_id']) {
                  item['game_history'] = '1';
                }
              }
            });
          }
          statusCode.code = 200;
          statusCode.msg = 'successfully!';
          statusCode.data.data = result;
          res.send(statusCode);
        });
      }
    });
  },

  /**
    * @description：查询关联表
    */
  findGameInfo(user_id, ...table) {
    let ivalFav = [table[0], user_id];
    let ivalLock = [table[1], user_id];
    let ivalHistory = [table[2], user_id];
    let sqlInfo = sql.getUserFavOrLock;

    let promiseFav = new Promise((resolve, reject) => { // 收藏
      commonSql.poolConn(sqlInfo, ivalFav, resFav => {
        resolve(resFav);
      });
    });

    let promiseLock = new Promise((resolve, reject) => { // 收藏
      commonSql.poolConn(sqlInfo, ivalLock, resLock => {
        resolve(resLock);
      });
    });

    let promiseHistory = new Promise((resolve, reject) => { // 浏览历史
      commonSql.poolConn(sqlInfo, ivalHistory, resHistory => {
        resolve(resHistory);
      });
    });

    if (user_id) {
      return Promise.all([promiseFav, promiseLock, promiseHistory]);
    } else {
      return Promise.resolve([]);
    }
  },

  // 处理图片路径方法
  dealPicPath(val) {
    val.forEach((item, index) => {
      item.game_detail_poster = baseIp + item.game_detail_poster;
      item.game_avatar_poster = baseIp + item.game_avatar_poster;
    });
    return val;
  },

  /**
    * @description: home部分的popGame加锁控制
    * @param {game_id} 影片id
    * @param {game_lock} 0:未加锁
    * @param {game_favorite} 1: 收藏
    * @param {user_id} 用户id
    */
  gameLockOrFav(req, res) {
    let reqObj = null;
    let ival = null;
    let sqlInfo = null;
    let userId = null;
    let gameId = null;

    if (author.isAuthor(req).status === 'UNLOGIN' || author.isAuthor(req).status === 'OVERTIME_LOGIN' || author.isAuthor(req).status === 'FORGEY_LOGIN') { // 未登录
      if (req && req.query) {
        statusCode.data = {};
        statusCode.code = 511;
        statusCode.msg = '请先登录!';
        res.send(statusCode);
        return;
      }
    } else if (author.isAuthor(req).status === 'LOGINED') {
      userId = author.isAuthor(req).user_id;
      gameId = req.body.game_id;
      if (req && req.body.game_lock) {
        if (req.body.game_lock === '1') { // 加锁
          reqObj = {
            user_id: userId,
            game_id: gameId
          }
          ival = ['gamelock', reqObj];
          sqlInfo = sql.addGameLockOrFav;
        } else if (req.body.game_lock === '0') {
          ival = ['gamelock', userId, gameId];
          sqlInfo = sql.deleteGameLockOrFav;
        }
      } else if (req.body.game_favorite) { // 收藏
        if (req.body.game_favorite === '1') {
          reqObj = {
            user_id: userId,
            game_id: gameId
          }
          ival = ['gamefav', reqObj];
          sqlInfo = sql.addGameLockOrFav;
        } else if (req.body.game_favorite === '0') {
          ival = ['gamefav', userId, gameId];
          sqlInfo = sql.deleteGameLockOrFav;
        }
      }
    }
    commonSql.poolConn(sqlInfo, ival, (result) => {
      if (result) {
        statusCode.code = 200;
        statusCode.msg = 'successfully!';
        statusCode.data = {};
        res.send(statusCode);
      }
    })
  }
}

module.exports = sqlFun;