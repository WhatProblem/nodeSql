// 接口编写定义

module.exports = {
  /*********************系统后台*********************/
  // 游戏模块
  allGameRoleList: '/game/allGameRoleList', // 所有游戏人物列表,get
  difFavDegree: '/game/difFavDegree', // 查询同一账户不同喜欢程度的游戏人物数据,get
  addGameRole: '/game/addGameRole', // 新增一条游戏人物数据,post
  updateGameRole: '/game/updateGameRole', // 修改一条游戏人物数据,post
  deleteGameRole: '/game/deleteGameRole', // 删除一条游戏人物数据,post
  totalCounts: '/game/totalCounts', // 获取符合条件的总数，get
  getDataAndTotals: '/game/getDataAndTotals', // 获取符合条件数据与总数，get
  searchGameRole: '/game/searchGameRole', // 模糊查询，post

  // 视频模块
  addOrEditOrDeleteFilm: '/film/addOrEditOrDeleteFilm', // 新增，编辑，删除一部影片，post
  selectTypeFilm: '/film/selectTypeFilm', // 根据影片类型查询,get
  searchFilm: '/film/searchFilm', // 模糊查询,get

  // 音乐模块
  addOrEditOrDelMusic: '/music/addOrEditOrDelMusic', // 新增，编辑，删除音乐，post
  selectTypeMusic: '/music/selectTypeMusic', // 根据影片类型查询
  searchMusic: '/music/searchMusic', // 模糊查询,get

  // 图片上传
  uploadFilmImg: '/film/uploadImg', // 图片视频上传，post
  loadFilmImg: '/film/loadImg', // 加载视频图片，get



  /*********************ng2-lifeStyle部分********************/
  loginLifeStyle: '/ng2LifeStyle/login', // 登录
  logOutLifeStyle: '/ng2LifeStyle/logOut', // 退出登录
  homePopFilm: '/home/homePopFilm', // 图片获取，get

  popFilmPoster: '/film/loadImg', // 图片获取，get
  homePopMusic: '/home/homePopMusic',
  popFilmLockOrFav: '/home/popFilmLockOrFav', // 加锁/收藏控制，post
  doFilmScore: '/film/doFilmScore', // 影片评分
  getFilmTalk: '/film/getFilmTalk', // 影片评语
  doFilmTalk: '/film/doFilmTalk', // 评论影片

  popMusicPoster: '/music/loadImg',
  popMusicFav: '/home/popMusicFav', // 音乐收藏，post

  homePopGame: '/home/homePopGame',
  popGamePoster: '/game/loadImg',
  homeDetailFilter: '/home/homeDetailFilter', // homeDetailFilm部分
  gameFavOrLock: '/home/gameFavOrLock', // 游戏人物收藏/加锁

  filmDetail: '/film/filmDetail', // film详情
}