const fs = require("fs");//操作文件
const express = require('express');
const multer = require('multer');

const app = express();


const uploadFun = {

  // 上传视频图片
  uploadFilmImg(req, res, next) {
    console.log(123);
    console.log(req.file);
    fs.rename(req.file.path, './public/test/' + req.file.originalname, (err) => {
      if (err) {
        console.log(err);
      } else {
        console.log('图片上传成功！');
      }
    });
    res.send(JSON.stringify(req.file) + JSON.stringify(req.body));
  },

  // 公共方法:callback
  comLoadImg(posterUrl, callback) {
    fs.readFile(posterUrl, (err, data) => {
      if (err) {
        console.log(err);
      } else {
        console.log('文件内容读取成功!');
        callback(data);
      }
    });
  },

  // 公共方法：promise
  // comLoadImg(posterUrl) {
  //   return new Promise((resolve, reject) => {
  //     fs.readFile(posterUrl, (err, data) => {
  //       if (err) {
  //         console.log(err);
  //       } else {
  //         console.log('文件内容读取成功!');
  //         resolve(data);
  //       }
  //     });
  //   })
  // },

  // 加载视频图片
  loadFilmImg(req, res, next) {
    let imgNum = req.query.filmId;
    if (req.query.poster === 'banner') {
      let posterUrl = `./public/films/banner${imgNum}.jpg`;
      uploadFun.comLoadImg(posterUrl, (sendFile) => {
        res.send(sendFile);
      });
      // uploadFun.comLoadImg(posterUrl).then(resp => {
      //   res.send(resp);
      // });
    } else if (req.query.poster === 'detail') {
      let posterUrl = `./public/films/detail${imgNum}.jpg`;
      uploadFun.comLoadImg(posterUrl, (sendFile) => {
        res.send(sendFile);
      });
      // uploadFun.comLoadImg(posterUrl).then(resp => {
      //   res.send(resp);
      // });
    }
  },

  /**
   * @description: home部分homePopFilm部分图片
   * @param {film_id} 图片id
   * @param {poster} 图片类型
   */
  loadHomePopFilmPic(req, res, next) {
    let imgNum = req.query.filmId;
    if (req.query.poster === 'detail') {
      let posterUrl = `./public/films/homePopFilm/${imgNum}.jpg`;
      uploadFun.comLoadImg(posterUrl, (sendFile) => {
        res.send(sendFile);
      });
    }

  }
}

module.exports = uploadFun;
