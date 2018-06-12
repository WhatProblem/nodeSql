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
  addFilm(req, res) {
    if (req.query) {
      let sqlInfo = sql.insertMoreFilmSql;
      let ival = [{
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
      }];
      commonSql.poolConn(sqlInfo, ival, (result) => {
        if (result) {
          res.send(statusCode);
        }
      })
    }
  }
};

module.exports = filmFun;