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
  // 新增一部影片
  addFilm(req, res) {
    if (req.query) {
      let sqlInfo = sql.insertFilmSql;
      let ival = [
        {
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
      ];

      commonSql.poolConn(sqlInfo, ival, (result) => {
        if (result) {
          res.send(statusCode);
        }
      })
    }
  },

  // 符合条件的总数
  getTypeCount(req) {
    if (req.query) {
      let sqlInfo = sql.allTypeSql;
      let ival = [
        req.query.film_type,
        req.query.film_type_value
      ];
      return new Promise((resolve, reject) => {
        commonSql.poolConn(sqlInfo, ival, (result) => {
          if (result) {
            resolve(result[0]['COUNT(*)']);
          }
        });
      });
    }
  },

  // 根据影片类型查询
  selectTypeFilm(req, res) {
    if (req.query) {
      let sqlInfo = sql.selectTypeSql;
      let limitTotals = parseInt(req.query.pages_total); // 每次查询总数
      let limitStart = parseInt((req.query.pages_index - 1) * limitTotals); // 查询开始位置
      let ival = [req.query.film_type, limitStart, limitTotals];

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
  }
};

module.exports = filmFun;