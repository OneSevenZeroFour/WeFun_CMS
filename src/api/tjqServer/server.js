var express = require("express");

var app = express();
app.listen(8888);

app.post('/province',(req,res)=>{
  res.append("Access-Control-Allow-Origin", "*")
  console.log(req);
  //发送省的数据库
  res.send('[1]')
})
app.post('/city',(req,res)=>{
  res.append("Access-Control-Allow-Origin", "*")
  console.log(req);
  // 根据获得的数据返回相应的城市
  res.send('[1]')
})
