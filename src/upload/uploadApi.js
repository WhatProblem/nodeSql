const fs = require("fs");//操作文件
const express = require('express');
const multer = require('multer');

const app = express();


const uploadFun = {
  uploadImg(req, res, next) {
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

  loadImg(req, res, next) {
    fs.readFile('./public/test/8.jpg', (err, data)=>{
      if (err) {
        console.log(err);
      } else {
        console.log('文件内容读取成功!');
        res.send(data);
      }
    })
  }
  // 单域单文件上传：input[file]的 multiple != "multiple"
  // router.post('/upload', upload.single('imageFile'), function (req, res, next) {
  // req.file 是 前端表单name=="imageFile" 的文件信息（不是数组）
  // console.log(req);

  // fs.rename(req.file.path, "upload/" + req.file.originalname, function (err) {
  //   if (err) {
  //     throw err;
  //   }
  //   console.log('上传成功!');
  // })
  // res.writeHead(200, {
  //   "Access-Control-Allow-Origin": "*"
  // });
  // res.end(JSON.stringify(req.file) + JSON.stringify(req.body));
  // });
}

module.exports = uploadFun;
