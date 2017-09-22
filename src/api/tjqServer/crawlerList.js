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
// 清空表
// connection.query(`DELETE FROM listgoods`, (err, res, fields) => {
//     if (err) throw err;
// });
crawlerList([{
    hostname: 'www.muyingzhijia.com',
    path: '/Shopping/ActivityPage.aspx?sbjId=4518',
    'class': '.evt-floor'
}, {
    hostname: 'sale.muyingzhijia.com',
    path: '/act/599.html',
    'class': '.guanggao'
}]);

function crawlerList(pathArr) {
    pathArr.forEach(function(e, i) {
        http.request({
            hostname: e.hostname,
            path: e.path,
            method: "post"
        }, function(res) {
            var data = "";
            res.on("data", function(chunk) {
                data += chunk;
            });
            res.on("error", function() { console.log("error"); });
            res.on("end", function() {
                const $ = cheerio.load(data);
                var $body = $(e.class);
                var $li = $body.find("li");
                var $title = $li.find(".goods-info");
                if ($title.length > 0) {
                    console.log("2");
                    var arr = [];
                    var timeArr = [];
                    var $price = $li.find(".price>em");
                    $title.each(function(i, e) {
                        var time = Date.now();
                        var title = $(e).find("p").eq(0).text();
                        if (Math.random() > 0.5) {
                            var description = '加9.9元可换购';
                        } else { var description = '欧洲直邮专享价' }
                        connection.query(`INSERT INTO listgoods (imgurl,title,description,price)
                                VALUES
                                ("${$li.find(".goods-pic .onloadingBg").eq(i).attr("data-url")}","${title}","${description}","${$price.eq(i).html()}")`, (err, result, fields) => {
                            if (err) throw err;
                        });
                        // arr.push($li.find(".goods-pic .onloadingBg").eq(i).attr("data-url"));
                        // timeArr.push(time);
                    });
                    // for (let i = 0; i < arr.length; i++) {
                    //     var imgStream = fs.createWriteStream(`../../img/${timeArr[i]}.jpg`);
                    //     download(arr, i, imgStream);
                    // }
                } else if ($li.find(".activityStats").length > 0) {
                    console.log("3");
                    var arr = [];
                    var timeArr = [];
                    $title = $li.find(".height18");
                    var $price = $title.next().next().find("strong>span");
                    var $description = $title.next().find("span");
                    $title.each(function(i, e) {
                        var time = Date.now();
                        var title = $(e).text();
                        var description = $description.eq(i).text();
                        var price = $price.eq(i).text();
                        connection.query(`INSERT INTO listgoods (imgurl,title,description,price)
                                VALUES
                                ("${$li.find(".img100 img").eq(i).attr("data-url")}","${title.trim()}","${description.trim()}","${price.trim()}")`, (err, result, fields) => {
                            if (err) throw err;
                        });
                        // arr.push($li.find(".img100 img").eq(i).attr("data-url"));
                        if (i >= $title.length - 1) {
                            connection.end()
                        }
                    });
                    // for (let i = 0; i < arr.length; i++) {
                    //     var imgStream = fs.createWriteStream(`../../img/${timeArr[i]}.jpg`);
                    //     download(arr, i, imgStream);
                    // }
                }
            });
        }).end();
    });
    console.log("1");
}

// function download(imgs, i, imgStream) {
//     http.get(imgs[i], function(res) {
//         res.pipe(imgStream);
//     })
// }