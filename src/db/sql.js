module.exports = {
  // 游戏模块
  selectSql: 'SELECT * FROM games WHERE user_id = ? ORDER BY create_date DESC LIMIT ?, ?', // 查询所有数据
  AllCounts: 'SELECT *, COUNT(*) FROM games WHERE user_id = ?', // 获取符合条件的总数
  selectFavDegree: 'SELECT * FROM games WHERE user_id = ? AND game_fav = ?', // 查询不同喜欢等级的数据
  insertSql: 'INSERT INTO games SET ?', // 新增单条数据
  insertMoreSql: 'INSERT INTO games(`game_id`,`game_role`,`game_power`,`game_total`,`game_fav`,`user_id`) VALUES ?', // 新增多条数据
  updateSql: 'UPDATE games SET game_role = ?, game_fav = ?, game_power = ?, game_total = ?, game_desc = ? WHERE game_id = ? AND user_id = ?', // 修改语句
  deleteSql: 'DELETE FROM games WHERE game_id = ? AND user_id = ?', // 删除语句
  totalCounts: 'SELECT *, COUNT(*) FROM games WHERE game_fav = ? AND user_id = ?', // 获取符合条件的总数
  getDataAndTotals: 'SELECT SQL_CALC_FOUND_ROWS * FROM games WHERE user_id = ? AND game_fav = ? ORDER BY create_date DESC LIMIT ?, ?', // 获取符合条件数据及总数
  searchSql: 'SELECT * FROM games WHERE user_id = ? AND game_role LIKE ? ORDER BY create_date DESC', // 模糊查询，game_total，game_role

  // 视频模块
  insertFilmSql: 'INSERT INTO films SET ?', // 新增视频
  insertMoreFilmSql: 'INSERT INTO films(`film_name`,`film_director`,`film_area`,`film_time`,`film_type`,`film_score`,`film_major`,`film_desc`,`user_name`, `user_id`) VALUES ?', // 新增多条数据
  selectTypeSql: 'SELECT * FROM films WHERE film_type = ? ORDER BY create_date DESC LIMIT ?, ?', // 根据影片类型查询, get
  allTypeSql: 'SELECT *, COUNT(*) FROM films WHERE ?? = ?', // 获取符合条件的总数
  updateFilmSql: 'UPDATE films SET ? WHERE film_id = ? AND user_id = ?', // 编辑修改视频数据
  deleteFilmSql: 'DELETE FROM films WHERE film_id = ? AND user_id = ?', // 删除语句
}