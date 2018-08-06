const fs = require('fs');
const path = require('path');
const jwt = require('jsonwebtoken');

// token数据
const payload = {
  name: 'dongsijia',
  admin: true
}

// 秘钥
const secret = 'wodexifudongsijia';

// 签发token
function createToken(payload, secret) {
  let token = jwt.sign(payload, secret, { expiresIn: 3600 * 24 });
  console.log(token);
  return token;
}

const userInfo = {
  /**
  * @description: 处理登录验证
  */
  loginLifeStyle(req, res) {
    let resToken = createToken(payload, secret);
    
    res.send('resToken');
  }
}

module.exports = userInfo;