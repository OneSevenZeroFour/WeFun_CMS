var express = require("express");
var bodyParser=require('body-parser');
var mysql=require('mysql');
var app=express();
var connection=mysql.createConnection({
    host:"localhost",
    user:'root',
    password:'',
    database:'nodejs'
});
connection.connect();
app.use(bodyParser.json()); // for parsing application/json
app.use(bodyParser.urlencoded({
    extended: true
})); // for parsing application/x-www-form-urlencoded
app.post('/gai',function(req,res){
    // console.log(req.body);
    var a=req.body;
    // console.log(a.content);
    // console.log(a.id);
    res.append("Access-Control-Allow-Origin","*");
    connection.query(`update listgoods set xianqin='${a.content}' where id='${a.id}'`,function(error,results,fileds){
        if(error) throw error;
        console.log('The solution is: ', results);
        res.send(JSON.stringify({
            results
        }));
    })

})
app.post('/jia',function(req,res){
    // console.log(req.body);
    var b=req.body;
    // console.log(b.id);
    res.append("Access-Control-Allow-Origin","*");
    connection.query(`select * from listgoods where id='${b.id}'`,function(error,results,fileds){
        if(error) throw error;
        console.log(results)
        res.send(JSON.stringify({results}));
    })

})
app.listen(1111);
console.log(2323);