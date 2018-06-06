const express = require('express');
const app = express();
// const router = app.router();
const fs = require('fs');
const path = require('path');
// const bodyParser = require('body-parser');

// games部分数据处理方法
const gameApi = require('./games/gameApi.js');

// api接口
const interfaceApi = require('./db/interfaceApi.js');

let router = express.Router();

router.get(interfaceApi.allGameRoleList, gameApi.getAllGameRoleData);
router.get(interfaceApi.difFavDegree, gameApi.getDifFavDegData);
router.post(interfaceApi.addGameRole, gameApi.addSingleGameRole);
router.post(interfaceApi.updateGameRole, gameApi.updateGameRole);
router.get(interfaceApi.deleteGameRole, gameApi.deleteGameRole);
router.get(interfaceApi.totalCounts, gameApi.getTotalCounts);
router.get(interfaceApi.getDataAndTotals, gameApi.getDataAndTotals)


module.exports = router;