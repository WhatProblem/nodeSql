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

const musicFun = {
  /**
   * @description: 新增，编辑音乐资料
   * @function 新增一条数据,一定不传music_id
   * @function 修改一条数据,必传music_id,user_id
   */
  addOrEditOrDelMusic(req, res) {
    if (req.query) {
      let sqlInfo = null;
      let ival = null;
      let reqObj = {
        music_name: req.query.music_name,
        music_singer: req.query.music_singer,
        music_area: req.query.music_area,
        music_time: req.query.music_time,
        music_type: req.query.music_type,
        music_score: req.query.music_score,
        music_desc: req.query.music_desc,
        user_name: req.query.user_name,
        user_id: req.query.user_id,
      }
      if (req.query.music_id && req.query.music_name) {
        // 修改
        sqlInfo = sql.updateMusicSql;
        delete reqObj['user_name'];
        delete reqObj['user_id'];
        ival = [reqObj, req.query.music_id, req.query.user_id];
      } else if (!req.query.music_id) {
        // 新增
        sqlInfo = sql.insertMusicSql;
        ival = [reqObj];
      } else if (!req.query.music_name) {
        // 删除
        sqlInfo = sql.deleteMusicSql;
        ival = [req.query.music_id, req.query.user_id];
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
   * @param {music_type} 需要查询的参数类型
   * @param {music_type_value} 需要查询的参数的值
   */
  getTypeCount(req) {
    if (req.query) {
      let sqlInfo = null;
      let ival = null;
      if (req.query.music_type_value === '12') {
        sqlInfo = 'SELECT *, COUNT(*) FROM musics';
        ival = '';
      } else {
        sqlInfo = sql.allMusicTypeSql;
        ival = [
          req.query.music_type,
          req.query.music_type_value
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
   * @description: 根据歌曲类型分类及分页
   * @param {music_type} 歌曲类型，提供于sql语句
   * @param {music_type_value} 歌曲类型值
   * @param {pages_total} 分页时每次查询总数
   * @param {pages_index} 当前页数
   */
  selectTypeMusic(req, res) {
    if (req.query) {
      let sqlInfo = null;
      let limitTotals = parseInt(req.query.pages_total); // 每次查询总数
      let limitStart = parseInt((req.query.pages_index - 1) * limitTotals); // 查询开始位置
      let ival = null;

      if (req.query.music_type_value === '12') {
        sqlInfo = 'SELECT * FROM musics ORDER BY create_date DESC LIMIT ?, ?';
        ival = [limitStart, limitTotals];
      } else {
        sqlInfo = sql.selectMusicTypeSql;
        ival = [req.query.music_type_value, limitStart, limitTotals];
      }
      commonSql.poolConn(sqlInfo, ival, (result) => {
        if (result) {
          musicFun.getTypeCount(req).then((respTotals) => {
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
   * @param {music_name} 歌曲名称
   * @param {music_desc} 歌曲描述
   * @param {music_area} 歌曲区域
   * @param {music_time} 歌曲年代
   * @function {music_value} 关键词
   * @function {music_type} 歌曲类型：前提查询条件
   */
  allSearchMusic(req) {
    let sqlInfo = null;
    let likeValue = null;
    let ival = null;
    if (req.query && req.query.music_type === '12') {
      sqlInfo = sql.allSearchMusicSql;
      likeValue = '%' + req.query.music_value + '%';
      ival = [likeValue, likeValue, likeValue, likeValue,];
    } else {
      sqlInfo = sql.allSearchMusicTypeSql;
      likeValue = '%' + req.query.music_value + '%';
      ival = [req.query.music_type, likeValue, likeValue, likeValue, likeValue,];
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
   * @description: 模糊查询歌曲名称，描述，区域，年代
   * @param {music_name} 歌曲名称
   * @param {music_desc} 歌曲描述
   * @param {music_area} 歌曲区域
   * @param {music_time} 歌曲年代
   * @function {music_value} 关键词
   */
  searchMusic(req, res) {
    let reqObj = null;
    let sqlInfo = null;
    let musicName = null;
    let musicDesc = null;
    let musicArea = null;
    let musicTime = null;
    let limitTotals = null;
    let limitStart = null;
    if (req.query && req.query.music_type === '12') {
      reqObj = req.query;
      sqlInfo = sql.searchMusicSql;
      musicName = '%' + reqObj.music_value + '%';
      musicDesc = '%' + reqObj.music_value + '%';
      musicArea = '%' + reqObj.music_value + '%';
      musicTime = '%' + reqObj.music_value + '%';
      limitTotals = parseInt(reqObj.pages_total); // 每页展示数量
      limitStart = parseInt((reqObj.pages_index - 1) * limitTotals); // 查询开始位置
      ival = [musicName, musicDesc, musicArea, musicTime, limitStart, limitTotals];
    } else {
      reqObj = req.query;
      sqlInfo = sql.searchMusicTypeSql;
      musicName = '%' + reqObj.music_value + '%';
      musicDesc = '%' + reqObj.music_value + '%';
      musicArea = '%' + reqObj.music_value + '%';
      musicTime = '%' + reqObj.music_value + '%';
      limitTotals = parseInt(reqObj.pages_total); // 每页展示数量
      limitStart = parseInt((reqObj.pages_index - 1) * limitTotals); // 查询开始位置
      ival = [reqObj.music_type, musicName, musicDesc, musicArea, musicTime, limitStart, limitTotals];
    }
    commonSql.poolConn(sqlInfo, ival, (result) => {
      if (result) {
        musicFun.allSearchMusic(req).then((respTotals) => {
          statusCode.data = {};
          statusCode.data.totals = respTotals;
          statusCode.data.data = result;
          res.send(statusCode);
        });
      }
    })
  }
};

module.exports = musicFun;