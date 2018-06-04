// 接口编写定义

module.exports = {
  allGameRoleList: '/allGameRoleList', // 所有游戏人物列表,get
  difFavDegree: '/difFavDegree', // 查询同一账户不同喜欢程度的游戏人物数据,get
  addGameRole: '/addGameRole', // 新增一条游戏人物数据,post
  updateGameRole: '/updateGameRole', // 修改一条游戏人物数据,post
  deleteGameRole: '/deleteGameRole', // 删除一条游戏人物数据,post
}