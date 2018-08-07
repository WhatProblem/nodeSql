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
  let token = jwt.sign(payload, secret, { expiresIn: '1day' });
  return token;
}

// 验证token
function isValidateToken(token) {
  return jwt.verify(token, secret, (error, decode) => {
    if (error) {
      return;
    }
    return decode;
  })
}

const userInfo = {
  /**
  * @description: 处理登录验证
  */
  loginLifeStyle(req, res) {
    let resToken = createToken(payload, secret);
    let resObj = { token: resToken }
    res.send(resObj);
  },


  /**
  * @description: 退出登录接口
  */
  logOutLifeStyle(req, res) {
    let headerToken = req.headers.authorization;
    let resObj = { msg: 'logOut successfully!' }
    console.log(headerToken);
    let logResult = isValidateToken(headerToken);
    if (logResult['name'] === 'dongsijia' && logResult['admin']) {
      res.send(resObj);
    }
  }
}

module.exports = userInfo;