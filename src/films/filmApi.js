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
  }
};

module.exports = filmFun;