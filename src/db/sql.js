module.exports = {
  // 游戏模块--系统后台
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

  // 视频模块--系统后台
  insertFilmSql: 'INSERT INTO films SET ?', // 新增视频
  insertMoreFilmSql: 'INSERT INTO films(`film_name`,`film_director`,`film_area`,`film_time`,`film_type`,`film_score`,`film_major`,`film_desc`,`user_name`, `user_id`) VALUES ?', // 新增多条数据
  selectTypeSql: 'SELECT * FROM films WHERE film_type = ? ORDER BY create_date DESC LIMIT ?, ?', // 根据影片类型查询, get
  allTypeSql: 'SELECT *, COUNT(*) FROM films WHERE ?? = ?', // 获取符合条件的总数
  updateFilmSql: 'UPDATE films SET ? WHERE film_id = ? AND user_id = ?', // 编辑修改视频数据
  deleteFilmSql: 'DELETE FROM films WHERE film_id = ? AND user_id = ?', // 删除语句
  searchFilmSql: 'SELECT * FROM films WHERE film_name LIKE ? OR film_desc LIKE ? OR film_area LIKE ? OR film_time LIKE ? ORDER BY create_date DESC LIMIT ?, ?', // 模糊查询
  allSearchFilmSql: 'SELECT *, COUNT(*) FROM films WHERE film_name LIKE ? OR film_desc LIKE ? OR film_area LIKE ? OR film_time LIKE ?', // 模糊查询总数
  searchFilmTypeSql: 'SELECT * FROM films WHERE film_type = ? AND (film_name LIKE ? OR film_desc LIKE ? OR film_area LIKE ? OR film_time LIKE ?) ORDER BY create_date DESC LIMIT ?, ?', // 模糊查询
  allSearchFilmTypeSql: 'SELECT *, COUNT(*) FROM films WHERE film_type = ? AND (film_name LIKE ? OR film_desc LIKE ? OR film_area LIKE ? OR film_time LIKE ?)', // 模糊查询总数

  // 音乐模块--系统后台
  insertMusicSql: 'INSERT INTO musics SET ?', // 新增音乐
  selectMusicTypeSql: 'SELECT * FROM musics WHERE music_type = ? ORDER BY create_date DESC LIMIT ?, ?', // 根据音乐类型查询, get
  allMusicTypeSql: 'SELECT *, COUNT(*) FROM musics WHERE ?? = ?', // 获取符合条件的总数
  updateMusicSql: 'UPDATE musics SET ? WHERE music_id = ? AND user_id = ?', // 编辑修改视频数据
  deleteMusicSql: 'DELETE FROM musics WHERE music_id = ? AND user_id = ?', // 删除语句
  searchMusicSql: 'SELECT * FROM musics WHERE music_name LIKE ? OR music_desc LIKE ? OR music_area LIKE ? OR music_time LIKE ? ORDER BY create_date DESC LIMIT ?, ?', // 模糊查询
  allSearchMusicSql: 'SELECT *, COUNT(*) FROM musics WHERE music_name LIKE ? OR music_desc LIKE ? OR music_area LIKE ? OR music_time LIKE ?', // 模糊查询总数
  searchMusicTypeSql: 'SELECT * FROM musics WHERE music_type = ? AND (music_name LIKE ? OR music_desc LIKE ? OR music_area LIKE ? OR music_time LIKE ?) ORDER BY create_date DESC LIMIT ?, ?', // 模糊查询
  allSearchMusicTypeSql: 'SELECT *, COUNT(*) FROM musics WHERE music_type = ? AND (music_name LIKE ? OR music_desc LIKE ? OR music_area LIKE ? OR music_time LIKE ?)', // 模糊查询总数

  // home视频模块--ng2-lifeStyle
  userInfo: 'SELECT * FROM users WHERE user_id = ? AND user_pwd = ?', // 用户查询，未加密
  getScoreVideo: 'SELECT * FROM films WHERE film_score >= ? ORDER BY create_date DESC', // 获取首页popFilm部分
  getUserFavOrLock: 'SELECT * FROM ?? WHERE user_id = ?', // 获取关联表中的收藏
  addfilmLockOrFav: 'INSERT INTO ?? SET ?', // 插入收藏/加锁到关联表
  updateFilmScore: 'UPDATE filmscore SET ? WHERE film_id = ? AND user_id = ?', // 更新评分
  updateFilms: 'UPDATE films SET ? WHERE film_id = ?', // 更新films表的评分
  findFilmScore: 'SELECT * FROM filmscore WHERE film_id = ? AND user_id = ?', // 查询filmScore表
  filmScore: 'SELECT film_score FROM filmscore WHERE film_id = ?', // 获取指定影片的评分
  filmTalk: 'SELECT film_talk_content FROM filmtalk WHERE film_id = ?', // 影片评论
  addFilmScore: 'INSERT INTO ?? SET ?', // 添加影片评分
  findFilmTalk: 'SELECT * FROM filmtalk WHERE film_id = ? AND user_id = ?', // 查询filmtalk表
  addFilmTalk: 'INSERT INTO ?? SET ?', // 添加影片评论内容
  updateFilmTalk: 'UPDATE filmtalk SET ? WHERE film_id = ? AND user_id = ?', // 更新评论内容
  deleteFilmLockOrFav: 'DELETE FROM ?? WHERE user_id = ? AND film_id = ?', // 删除收藏或加锁
  getScoreAudio: 'SELECT * FROM musics WHERE music_score >= ? ORDER BY create_date DESC', // 获取首页popMusic部分
  getGameDetail: 'SELECT * FROM games WHERE game_power >= ? ORDER BY create_date DESC', // 获取首页popGame部分
  addMusicFav: 'INSERT INTO ?? SET ?', // 插入收藏到列表
  deleteMusicFav: 'DELETE FROM ?? WHERE user_id = ? AND music_id = ?', // 删除收藏
  homeDetailFilm: 'SELECT * FROM films WHERE film_score LIKE ? AND film_time LIKE ? AND film_type LIKE ? AND user_id = ? ORDER BY create_date DESC LIMIT ?, ?', // 获取首页homeDetailFilm部分
  homeDetailMusic: 'SELECT * FROM musics WHERE music_score LIKE ? AND music_time LIKE ? AND music_type LIKE ? AND user_id = ? ORDER BY create_date DESC LIMIT ?, ?', // 获取首页homeDetailMusic部分
  homeDetailGame: 'SELECT * FROM games WHERE game_hero_score LIKE ? AND game_hero_type LIKE ? AND game_hero_degree LIKE ? AND user_id = ? ORDER BY create_date DESC LIMIT ?, ?', // 获取首页homeDetailGame部分
  addGameLockOrFav: 'INSERT INTO ?? SET ?', // // 插入收藏/加锁到关联表
  deleteGameLockOrFav: 'DELETE FROM ?? WHERE user_id = ? AND game_id = ?', // 删除加锁/收藏
  getFilmDetail: 'SELECT * FROM films WHERE film_id = ? AND user_id = ?', // 获取对应film_id详情
  changeGameLockOrFav: 'UPDATE games SET ? WHERE game_id = ? AND user_id = ?', // popFilm部分的收藏加锁
}