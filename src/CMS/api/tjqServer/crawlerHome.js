var http = require("http");
var fs = require("fs");
var mysql = require("mysql");
var cheerio = require('cheerio');

var connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: '',
    database: 'muyingzhijia'
});
connection.connect();

//清空表
connection.query(`DELETE FROM hotgoods`, (err, res, fields) => {
    if (err) throw err;
});
//清空表
connection.query(`DELETE FROM special`, (err, res, fields) => {
    if (err) throw err;
});

var req = http.request({
    hostname: "localhost",
    port: 8080,
    path: "/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/a.html",
}, function(res) {
    var data = "";
    res.on("data", function(chunk) {
        data += chunk;
    });
    res.on("end", function() {
        const $ = cheerio.load(data);
        var title = $("#specialProduct .site-hot-row-two .newstats"); //标题
        var product = $("#specialProduct .site-hot-row-three>.product-words"); //内容
        var price = $("#specialProduct .price p"); //价格
        for (let i = 0; i < title.length; i++) {
            connection.query(`INSERT INTO special (imgurl,title,description,price)
                        VALUES
                        ("img/special${i}.jpg","${$(title[i]).text().trim()}","${$(product[i]).text().trim()}","${$(price[i]).text().trim().slice(1, -1)}")`, (err, result, fields) => {
                if (err) throw err;
            });
        }

        title = $("#hotProduct .site-hot-row-two .promotionStats"); //标题
        product = $("#hotProduct .site-hot-row-three>.product-words"); //内容
        price = $("#hotProduct .promo-new-price"); //价格
        for (let i = 0; i < title.length; i++) {
            connection.query(`INSERT INTO hotgoods (imgurl,title,description,price)
                        VALUES
                        ("img/jinxuan${i}.jpg","${$(title[i]).text().trim()}","${$(product[i]).text().trim()}","${$(price[i]).text().trim()}")`, (err, result, fields) => {
                if (err) throw err;
            });
        }



        $("#specialProduct .site-hot-item-fl img").each(function(index, ele) {
            var writerStream = fs.createWriteStream(`../../img/special${index}.jpg`);
            http.get($(ele).attr("data-url"), function(res) {
                res.pipe(writerStream);
            });
        });

        $("#hotProduct .site-hot-item-fl img").each(function(index, ele) {
            var writerStream = fs.createWriteStream(`../../img/jinxuan${index}.jpg`);
            http.get($(ele).attr("data-url"), function(res) {
                res.pipe(writerStream);
            });
        });
        connection.end();
    });
}).end();