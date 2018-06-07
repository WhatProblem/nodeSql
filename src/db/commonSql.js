const mysql = require('mysql');
const option = require('./config.js');
const pool = mysql.createPool(option);


// 查询语句
// const selectSql = 'SELECT * FROM games WHERE user_id = ?';
// let sValues = [1];

// #新增语句1:单条数据
// const insertSql = 'INSERT INTO games SET ?'
// let iValues = [
//   {
//     game_id: 3,
//     game_role: '狗头',
//     game_power: 13000,
//     game_total: 600,
//     game_fav: 0,
//     user_id: 1
//   }
// ];

// #新增语句2：多条数据
// const insertSql = 'INSERT INTO games(`game_id`,`game_role`,`game_power`,`game_total`,`game_fav`,`user_id`) VALUES ?';
// let iValues = [[[3, '狗头', 13000, 660, 0, 1], [4, '鳄鱼', 10000, 400, 1, 1]]];

// // 修改语句
// const updateSql = 'UPDATE games SET game_role = ?, game_power = ?, game_total = ?, game_fav = ? WHERE game_id = ? AND user_id = ?';
// let uValues = ['内瑟斯', 13000, 660, 0, 3, 1];

// // 删除语句
// const deleteSql = 'DELETE FROM games WHERE game_id = ? AND user_id = ?';
// let dValues = [2, 1];

module.exports = {
  poolConn(sql, val, callback) {
    pool.getConnection((err, conn) => {
      conn.query(sql, val, (err, results, fields) => {
        if (err) {
          console.log('this is error: ' + err);
          return;
        } else {
          // console.log(results);
          console.log('get data successfully!');
          callback(results);
        }
        conn.release();
        // 关闭连接
        // conn.destroy();
      });
    });
  }
}