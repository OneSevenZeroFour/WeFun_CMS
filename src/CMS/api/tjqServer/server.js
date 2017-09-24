var getLocationMysql = require("./locationServer.js");

var express = require("express");
var bodyParser = require('body-parser')

var app = express();
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
	extended: false
}));

app.listen(8888);

getLocationMysql.getLocationMysql(app);