module.exports = {
  selectSql: 'SELECT * FROM games WHERE user_id = ?', // 查询所有数据
  selectFavDegree: 'SELECT * FROM games WHERE user_id = ? AND game_fav = ?', // 查询不同喜欢等级的数据
  insertSql: 'INSERT INTO games SET ?', // 新增单条数据
  insertMoreSql: 'INSERT INTO games(`game_id`,`game_role`,`game_power`,`game_total`,`game_fav`,`user_id`) VALUES ?', // 新增多条数据
  updateSql: 'UPDATE games SET game_role = ?, game_power = ?, game_total = ?, game_fav = ? WHERE game_id = ? AND user_id = ?', // 修改语句
  deleteSql: 'DELETE FROM games WHERE game_id = ? AND user_id = ?', // 删除语句
}