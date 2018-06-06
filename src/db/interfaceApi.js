// 接口编写定义

module.exports = {
  allGameRoleList: '/game/allGameRoleList', // 所有游戏人物列表,get
  difFavDegree: '/game/difFavDegree', // 查询同一账户不同喜欢程度的游戏人物数据,get
  addGameRole: '/game/addGameRole', // 新增一条游戏人物数据,post
  updateGameRole: '/game/updateGameRole', // 修改一条游戏人物数据,post
  deleteGameRole: '/game/deleteGameRole', // 删除一条游戏人物数据,post
  totalCounts: '/game/totalCounts', // 获取符合条件的总数，get
  getDataAndTotals: '/game/getDataAndTotals', // 获取符合条件数据与总数，get
}