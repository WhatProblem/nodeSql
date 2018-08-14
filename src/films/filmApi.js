const express = require('express');
const fs = require('fs');
const commonSql = require('../db/commonSql.js');
const sql = require('../db/sql.js');

// 自定义状态码
let statusCode = {
  code: 200,
  data: {},
  msg: 'successfully!'
};

const baseIp = 'http://localhost:9000';

const filmFun = {
  /**
   * @description: 新增，编辑视频资料
   * @function 新增一条数据,一定不传film_id
   * @function 修改一条数据,必传film_id,user_id
   */
  addOrEditOrDeleteFilm(req, res) {
    if (req.query) {
      let sqlInfo = null;
      let ival = null;
      let reqObj = {
        film_name: req.query.film_name,
        film_director: req.query.film_director,
        film_area: req.query.film_area,
        film_time: req.query.film_time,
        film_type: req.query.film_type,
        film_score: req.query.film_score,
        film_major: req.query.film_major,
        film_desc: req.query.film_desc,
        user_name: req.query.user_name,
        user_id: req.query.user_id,
      }
      if (req.query.film_id && req.query.film_name) {
        // 修改
        sqlInfo = sql.updateFilmSql;
        delete reqObj['user_name'];
        delete reqObj['user_id'];
        ival = [reqObj, req.query.film_id, req.query.user_id];
      } else if (!req.query.film_id) {
        // 新增
        sqlInfo = sql.insertFilmSql;
        ival = [reqObj];
      } else if (!req.query.film_name) {
        // 删除
        sqlInfo = sql.deleteFilmSql;
        ival = [req.query.film_id, req.query.user_id];
      }

      commonSql.poolConn(sqlInfo, ival, (result) => {
        if (result) {
          res.send(statusCode);
        }
      })
    }
  },

  /**
   * @description: 每次查询总数
   * @param {film_type} 需要查询的参数类型
   * @param {film_type_value} 需要查询的参数的值
   */
  getTypeCount(req) {
    if (req.query) {
      let sqlInfo = null;
      let ival = null;
      if (req.query.film_type_value === '9') {
        sqlInfo = 'SELECT *, COUNT(*) FROM films';
        ival = '';
      } else {
        sqlInfo = sql.allTypeSql;
        ival = [
          req.query.film_type,
          req.query.film_type_value
        ];
      }
      return new Promise((resolve, reject) => {
        commonSql.poolConn(sqlInfo, ival, (result) => {
          if (result) {
            resolve(result[0]['COUNT(*)']);
          }
        });
      });
    }
  },

  /**
   * @description: 根据影片类型分类及分页
   * @param {film_type} 视频类型，提供于sql语句
   * @param {film_type_value} 视频类型值
   * @param {pages_total} 分页时每次查询总数
   * @param {pages_index} 当前页数
   */
  selectTypeFilm(req, res) {
    if (req.query) {
      let sqlInfo = null;
      let limitTotals = parseInt(req.query.pages_total); // 每次查询总数
      let limitStart = parseInt((req.query.pages_index - 1) * limitTotals); // 查询开始位置
      let ival = null;

      if (req.query.film_type_value === '9') {
        sqlInfo = 'SELECT * FROM films ORDER BY create_date DESC LIMIT ?, ?';
        ival = [limitStart, limitTotals];
      } else {
        sqlInfo = sql.selectTypeSql;
        ival = [req.query.film_type_value, limitStart, limitTotals];
      }
      commonSql.poolConn(sqlInfo, ival, (result) => {
        if (result) {
          filmFun.getTypeCount(req).then((respTotals) => {
            statusCode.data = {};
            statusCode.data.totals = respTotals;
            statusCode.data.data = result;
            res.send(statusCode);
          });
        }
      });
    }
  },

  /**
   * @description: 模糊查询总数
   * @param {film_name} 影片名称
   * @param {film_desc} 影片描述
   * @param {film_area} 影片区域
   * @param {film_time} 影片年代
   * @function {film_value} 关键词
   * @function {film_type} 影片类型：前提查询条件
   */
  allSearchFilm(req) {
    let sqlInfo = null;
    let likeValue = null;
    let ival = null;
    if (req.query && req.query.film_type === '9') {
      sqlInfo = sql.allSearchFilmSql;
      likeValue = '%' + req.query.film_value + '%';
      ival = [likeValue, likeValue, likeValue, likeValue,];
    } else {
      sqlInfo = sql.allSearchFilmTypeSql;
      likeValue = '%' + req.query.film_value + '%';
      ival = [req.query.film_type, likeValue, likeValue, likeValue, likeValue,];
    }
    return new Promise((resolve, reject) => {
      commonSql.poolConn(sqlInfo, ival, (result) => {
        if (result) {
          resolve(result[0]['COUNT(*)']);
        }
      });
    });
  },

  /**
   * @description: 模糊查询影片名称，描述，区域，年代
   * @param {film_name} 影片名称
   * @param {film_desc} 影片描述
   * @param {film_area} 影片区域
   * @param {film_time} 影片年代
   * @function {film_value} 关键词
   */
  searchFilm(req, res) {
    let reqObj = null;
    let sqlInfo = null;
    let filmName = null;
    let filmDesc = null;
    let filmArea = null;
    let filmTime = null;
    let limitTotals = null;
    let limitStart = null;
    if (req.query && req.query.film_type === '9') {
      reqObj = req.query;
      sqlInfo = sql.searchFilmSql;
      filmName = '%' + reqObj.film_value + '%';
      filmDesc = '%' + reqObj.film_value + '%';
      filmArea = '%' + reqObj.film_value + '%';
      filmTime = '%' + reqObj.film_value + '%';
      limitTotals = parseInt(reqObj.pages_total); // 每页展示数量
      limitStart = parseInt((reqObj.pages_index - 1) * limitTotals); // 查询开始位置
      ival = [filmName, filmDesc, filmArea, filmTime, limitStart, limitTotals];
    } else {
      reqObj = req.query;
      sqlInfo = sql.searchFilmTypeSql;
      filmName = '%' + reqObj.film_value + '%';
      filmDesc = '%' + reqObj.film_value + '%';
      filmArea = '%' + reqObj.film_value + '%';
      filmTime = '%' + reqObj.film_value + '%';
      limitTotals = parseInt(reqObj.pages_total); // 每页展示数量
      limitStart = parseInt((reqObj.pages_index - 1) * limitTotals); // 查询开始位置
      ival = [reqObj.film_type, filmName, filmDesc, filmArea, filmTime, limitStart, limitTotals];
    }
    commonSql.poolConn(sqlInfo, ival, (result) => {
      if (result) {
        filmFun.allSearchFilm(req).then((respTotals) => {
          statusCode.data = {};
          statusCode.data.totals = respTotals;
          statusCode.data.data = result;
          res.send(statusCode);
        });
      }
    })
  },


  /***********************ng2-lifeStyle部分数据*************************/
  /**
   * @description: 获取home部分popFilm部分
   * @param {film_score} 根据影片评分查询
   */
  getScoreFilm(req, res) {
    let reqObj = null;
    let ival = null;
    let sqlInfo = null;
    if (req && req.query) {
      reqObj = req.query.film_score;
      ival = [reqObj];
      sqlInfo = sql.getScoreVideo;
    }
    commonSql.poolConn(sqlInfo, ival, (result) => {
      if (result) {
        statusCode.data = {};
        statusCode.data.totals = result.length;
        result = filmFun.dealPicPath(result);
        statusCode.data.data = result;
        res.send(statusCode);
      }
    });
  },

  /**
   * @description: home部分的popFilm加锁控制
   * @param {film_id} 影片id
   * @param {film_lock} 0:未加锁
   * @param {film_favorite} 1: 收藏
   * @param {user_id} 用户id
   */

  filmLockOrFav(req, res) {
    let reqObj = null;
    let ival = null;
    let sqlInfo = null;
    if (req && req.body.film_lock) {
      reqObj = { film_lock: req.body.film_lock };
    } else if (req.body.film_favorite) {
      reqObj = { film_favorite: req.body.film_favorite };
    }
    ival = [reqObj, req.body.film_id, req.body.user_id];
    sqlInfo = sql.changeLockOrFav;
    commonSql.poolConn(sqlInfo, ival, (result) => {
      if (result) {
        statusCode.data = {};
        res.send(statusCode);
      }
    })
  },

  // 处理图片路径方法
  dealPicPath(val) {
    val.forEach((item, index) => {
      if (item.film_detail_poster) {
        item.film_detail_poster = baseIp + item.film_detail_poster;
      } else if (item.music_detail_poster) {
        item.music_detail_poster = baseIp + item.music_detail_poster;
      } else if (item.game_detail_poster) {
        item.game_detail_poster = baseIp + item.game_detail_poster;
      }
    });
    return val;
  },

  /**
* @description: 获取homeDetailFilter部分
* @param {film_score} 影片评分
* @param {film_time} 影片年代
* @param {film_type} 影片类型
* @param {user_id} 用户id
*/
  getHomeDetailFilter(req, res) {
    let reqObj = null;
    let ival = null;
    let sqlInfo = null;
    let score = '';
    let time = '';
    let type = '';
    let difficult = '';
    if (req.query.film_score || req.query.film_score === '0') {
      score = req.query.film_score === '0' ? '' : (req.query.film_score + '.');
      time = req.query.film_time === '0' ? '' : req.query.film_time;
      type = req.query.film_type === '0' ? '' : req.query.film_type;
      ival = ['%' + score + '%', '%' + time + '%', '%' + type + '%', req.query.user_id, parseInt(req.query.pages_index), parseInt(req.query.pages_total)];
      sqlInfo = sql.homeDetailFilm;
    } else if (req.query.music_score || req.query.music_score === '0') {
      score = req.query.music_score === '0' ? '' : (req.query.music_score + '.');
      time = req.query.music_time === '0' ? '' : req.query.music_time;
      type = req.query.music_type === '0' ? '' : req.query.music_type;
      ival = ['%' + score + '%', '%' + time + '%', '%' + type + '%', req.query.user_id, parseInt(req.query.pages_index), parseInt(req.query.pages_total)];
      sqlInfo = sql.homeDetailMusic;
    } else if (req.query.game_hero_score || req.query.game_hero_score === '0') {
      score = req.query.game_hero_score === '0' ? '' : req.query.game_hero_score;
      difficult = req.query.game_hero_degree === '0' ? '' : req.query.game_hero_degree;
      type = req.query.game_hero_type === '0' ? '' : req.query.game_hero_type;
      ival = ['%' + score + '%', '%' + difficult + '%', '%' + type + '%', req.query.user_id, parseInt(req.query.pages_index), parseInt(req.query.pages_total)];
      sqlInfo = sql.homeDetailGame;
    }
    commonSql.poolConn(sqlInfo, ival, (result) => {
      if (result) {
        statusCode.data = {};
        statusCode.data.totals = result.length;
        result = filmFun.dealPicPath(result);
        statusCode.data.data = result;
        res.send(statusCode);
      }
    });
  },

  /**
* @description: 获取影片详情
* @param {user_id}
* @param {film_id}
*/
  getFilmDetail(req, res) {
    let ival = null;
    let sqlInfo = null;
    if (req && req.query.film_id) {
      ival = [req.query.film_id, req.query.user_id];
      sqlInfo = sql.getFilmDetail;
    }
    commonSql.poolConn(sqlInfo, ival, (result) => {
      if (result) {
        statusCode.data = result;
        res.send(statusCode);
      }
    });
  }
};

module.exports = filmFun;