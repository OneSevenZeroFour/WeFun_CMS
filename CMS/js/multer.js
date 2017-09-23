/* 
* @Author: Marte
* @Date:   2017-09-14 20:01:28
* @Last Modified by:   Marte
* @Last Modified time: 2017-09-20 20:56:47
*/
var express = require("express");

var multer = require('multer');
// 配置上传文件存放的信息
var url;
var storage = multer.diskStorage({
    // 设置上传文件存放的目录
    destination:function(req,file,cb){
        cb(null,'../../img')
    },
    // 设置上传后文件的名字|
    filename:function(req,file,cb){
        // 拼接文件名和文件后缀
        var fileFormat = file.originalname.split('.');
        console.log(req._eventsCount)
        url = file.fieldname + '-' + Date.now() + parseInt(Math.random()*100) + "." + fileFormat[fileFormat.length - 1];
        cb(null,url);
    }
})
// 往multer去配置这个存放文件的信息
var upload = multer({
    storage:storage
});
// 初始化第一个express应用程序
var app = express();
app.post('/profile',upload.any(),function(req,res,next){
    res.append("Access-Control-Allow-Origin","*");
    res.send(req.files);
    console.log(req.files)
})
app.listen(1234);
console.log('开启服务器')
