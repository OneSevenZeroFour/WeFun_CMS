var http = require("http");
var fs = require("fs");
var mysql = require("mysql")
var cheerio = require('cheerio');

var connection = mysql.createConnection({
	host:"localhost",
	user:"root",
	password:'',
	database:'muyingzhijia'
})

http.request({
	hostname: "localhost",
	port: 8080,
	path:"/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/a.html",
	method: "get"
}, function(res) {
	var data = "";
	res.on("data", function(chunk) {
		data += chunk
	})
	res.on("end", function() {
		//console.log(data);
		const $ = cheerio.load(data);
		var  title= $("#specialProduct .site-hot-row-two .newstats");//标题
		var product = $("#specialProduct .site-hot-row-three>.product-words");//内容
		var price = $("#specialProduct .price p");//价格
		for(let i = 0;i<a.length;i++){
			console.log("a:",$(e).text().trim());
			console.log("b:",$(b[i]).text().trim());
			console.log("c:",i,$(c[i]).text().trim().slice(1, -1));

		}

		var imgArr = [];

		// $("img").each(function(index, ele) {
		// 	//console.log($(ele).attr("src"));
		// 	imgArr.push($(ele).attr("src"))
		// })
		// download(imgArr)
	})
}).end();

function download(imgArr) {
	console.log(imgArr)
	var writerStream = fs.createWriteStream('./img/3.jpg');
	http.get(imgArr[3], function(res) {
		res.pipe(writerStream)
	})
}