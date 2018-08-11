const express = require('express');
const app = express();
// const router = app.router();
const fs = require('fs');
const path = require('path');
const multer = require('multer');

let router = express.Router();

// 登录部分
const userInfo = require('./user/user.js');
// games部分数据处理方法
const gameApi = require('./games/gameApi.js');
// films部分数据处理方法
const filmApi = require('./films/filmApi.js');
// musics部分数据处理方法
const musicApi = require('./musics/musicApi.js');
// api接口
const interfaceApi = require('./db/interfaceApi.js');
// uploadApi接口
const uploadApi = require('./upload/uploadApi.js');


const upload = multer(
  {
    dest: './public/test'  // 定义图片上传的临时目录
  }
);

/*************************系统后台******************************/
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

// 文件模块：上传图片
router.post(interfaceApi.uploadFilmImg, upload.single('imageFile'), uploadApi.uploadFilmImg);

// 文件模块：加载视频图片
// router.get(interfaceApi.loadFilmImg, uploadApi.loadFilmImg);




/**************************ng2-lifeStyle部分******************************/
router.post(interfaceApi.loginLifeStyle, userInfo.loginLifeStyle);
router.post(interfaceApi.logOutLifeStyle, userInfo.logOutLifeStyle)

// home部分
router.get(interfaceApi.homePopFilm, filmApi.getScoreFilm);
router.get(interfaceApi.popFilmPoster, uploadApi.loadHomePopFilmPic);
router.post(interfaceApi.popFilmLockOrFav, filmApi.filmLockOrFav);
router.get(interfaceApi.homePopMusic, musicApi.getScoreMusic);
router.post(interfaceApi.popMusicFav, musicApi.musicFav);
router.get(interfaceApi.popMusicPoster, uploadApi.loadHomePopMusicPic);
router.get(interfaceApi.homePopGame, gameApi.getPowerGame);
router.get(interfaceApi.popGamePoster, uploadApi.loadHomePopGamePic)
module.exports = router;