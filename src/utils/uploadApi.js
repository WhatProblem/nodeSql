const fs = require("fs");//操作文件
const express = require('express');
const multer = require('multer');

// const upload = multer(
//   {
//     dest: '../public/test'  // //定义图片上传的临时目录
//   }
// );

const app = express();
const router = express.Router();


const uploadFun = {
  uploadImg(req, res, next) {
    console.log(req);
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
