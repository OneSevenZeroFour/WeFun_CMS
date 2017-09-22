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
    // var a=req.body;
    // console.log(a.content);
    // console.log(a.id)
    // connection.qurey(`update listgoods set '${a.content}' where id=${a.id}`,function(error,results,fileds){
    //     res.append("Access-Control-Allow-Origin","*")
    //     if(error) throw error;
    //     console.log('The solution is: ', results);
    //     res.send(JSON.stringify({
    //         results
    //     }));
    // })
})
app.listen(8238);
console.log(2323);