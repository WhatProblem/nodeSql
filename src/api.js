const express = require('express');
const app = express();
// const router = app.router();
const fs = require('fs');
const path = require('path');
// const bodyParser = require('body-parser');

// games部分数据处理方法
const gameApi = require('./games/gameApi.js');
// films部分数据处理方法
const filmApi = require('./films/filmApi.js');
// musics部分数据处理方法
const musicApi = require('./musics/musicApi.js');

// api接口
const interfaceApi = require('./db/interfaceApi.js');

let router = express.Router();

// 游戏模块
router.get(interfaceApi.allGameRoleList, gameApi.getAllGameRoleData);
router.get(interfaceApi.difFavDegree, gameApi.getDifFavDegData);
router.post(interfaceApi.addGameRole, gameApi.addSingleGameRole);
router.post(interfaceApi.updateGameRole, gameApi.updateGameRole);
router.get(interfaceApi.deleteGameRole, gameApi.deleteGameRole);
router.get(interfaceApi.totalCounts, gameApi.getTotalCounts);
router.get(interfaceApi.getDataAndTotals, gameApi.getDataAndTotals);
router.post(interfaceApi.searchGameRole, gameApi.getSearchRole);

// 视频模块
router.post(interfaceApi.addOrEditOrDeleteFilm, filmApi.addOrEditOrDeleteFilm);
router.get(interfaceApi.selectTypeFilm, filmApi.selectTypeFilm);
router.get(interfaceApi.searchFilm, filmApi.searchFilm);

// 音乐模块
router.post(interfaceApi.addOrEditOrDelMusic, musicApi.addOrEditOrDelMusic);
router.get(interfaceApi.selectTypeMusic, musicApi.selectTypeMusic);
router.get(interfaceApi.searchMusic, musicApi.searchMusic);


module.exports = router;