const fs = require('fs');
const path = require('path');
const jwt = require('jsonwebtoken');
const express = require('express');
const commonSql = require('../db/commonSql.js');
const sql = require('../db/sql.js');

// 自定义状态码
let statusCode = {
  code: 200,
  data: {},
  msg: 'successfully!'
};

// token数据
const payload = {
  name: 'dongsijia',
  admin: true
}

// 秘钥
const secret = 'wodexifudongsijia';


const userInfo = {
  // 签发token
  createToken(payload, secret) {
    let token = jwt.sign(payload, secret, { expiresIn: '1h' });
    return token;
  },
  // 验证token
  isValidateToken(token) {
    return jwt.verify(token, secret, (error, decode) => {
      if (error) {
        let failObj = {};
        if (error.name === 'TokenExpiredError') {
          failObj.name = 'TokenExpiredError';
        } else if (error.name === 'JsonWebTokenError') {
          failObj.name = 'JsonWebTokenError';
        }
        return failObj;
      }
      return decode;
    })
  },

  /**
  * @description: 处理登录验证
  */
  loginLifeStyle(req, res) {
    let user_id = null;
    let user_pwd = '';
    let ival = null;
    let sqlInfo = null;
    if (req.body) {
      user_id = req.body.username;
      user_pwd = req.body.password;
      sqlInfo = sql.userInfo;
      ival = [user_id, user_pwd];
    }
    commonSql.poolConn(sqlInfo, ival, (result) => {
      if (result.length) {
        payload.username = user_id;
        payload.password = user_pwd;
        let resToken = userInfo.createToken(payload, secret);
        let resObj = { token: resToken };
        statusCode.code = 200;
        statusCode.msg = 'successfully!';
        statusCode.data = resObj;
        res.send(statusCode);
      } else {
        statusCode.code = 202;
        statusCode.msg = '账号名或密码错误';
        res.send(statusCode);
      }
    });

  },

  /**
  * @description: 退出登录接口
  */
  logOutLifeStyle(req, res) {
    let headerToken = req.headers.authorization;
    let logResult = userInfo.isValidateToken(headerToken);
    statusCode.data = {};
    if (logResult['name'] === 'dongsijia' && logResult['admin']) {
      statusCode.code = 200;
    } else if (logResult['name'] === 'TokenExpiredError') {
      statusCode.code = 201;
      statusCode.msg = '登录超时!';
    } else if (logResult['name'] === 'JsonWebTokenError') {
      statusCode.code = 204;
      statusCode.msg = '伪造token!';
    }
    res.send(statusCode);
  },

  /**
  * @description: 数据获取权限
  */
  isAuthor(req) {
    let headerToken = req.headers.authorization;
    let logResult = null;
    let reqStatus = {};
    if (!headerToken || headerToken === '' || headerToken === null) { // 未登录
      reqStatus.status = 'UNLOGIN';
    } else {
      logResult = userInfo.isValidateToken(headerToken);
      if (logResult['name'] === 'dongsijia' && logResult['admin']) { // 已登录
        reqStatus.status = 'LOGINED';
        reqStatus.user_id = logResult.username;
      } else if (logResult['name'] === 'TokenExpiredError') { // 登陆超时
        reqStatus.status = 'OVERTIME_LOGIN';
      } else if (logResult['name'] === 'JsonWebTokenError') { // 伪造token
        reqStatus.status = 'FORGEY_LOGIN';
      }
    }
    return reqStatus;
  }
}

module.exports = userInfo;