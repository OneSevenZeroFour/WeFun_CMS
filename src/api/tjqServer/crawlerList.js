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
connection.query(`DELETE FROM listgoods`, (err, res, fields) => {
    if (err) throw err;
});

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
            // port: 8080,
            path: e.path,
            method: "post"
        }, function(res) {
            var data = "";
            res.on("data", function(chunk) {
                data += chunk;
            });
            res.on("error", function() { console.log("error"); });
            res.on("end", function() {
                var arr = [];
                var timeArr = [];
                const $ = cheerio.load(data);
                var $body = $(e.class);
                var $li = $body.find("li");
                var $title = $li.find(".goods-info");
                if ($title.length > 0) {
                    var $price = $li.find(".price>em");
                    $title.each(function(i, e) {
                        var time = Date.now();
                        var title = $(e).find("p").eq(0).text();
                        if (Math.random() > 0.5) {
                            var description = '加9.9元可换购';

                        } else { var description = '欧洲直邮专享价' }
                        // console.log("a",title,"b",description);
                        // console.log($price.eq(i).html());
                        connection.query(`INSERT INTO listgoods (imgurl,title,description,price)
                                VALUES
                                ("img/${time}.jpg","${title}","${description}","${$price.eq(i).html()}")`, (err, result, fields) => {
                            if (err) throw err;
                        });

                        arr.push($li.find(".goods-pic img").eq(i).attr("data-url"));
                        timeArr.push(time);


                        // var writerStream = fs.createWriteStream(`../img/${time}.jpg`);

                        // http.get($li.find(".goods-pic img").eq(i).attr("data-url"), function(res) {
                        //     console.log("正在下载第", i, "张图片");
                        //     res.pipe(writerStream);
                        //     console.log("下载完成");
                        // });

                    });

                    for (let i = 0; i < arr.length; i++) {
                        var imgStream = fs.createWriteStream(`../img/${timeArr[i]}.jpg`);
                        download(arr, i, imgStream);
                    }

                }


                if (i >= pathArr.length - 1) {
                    connection.end();
                }
            });
        }).end();

    });
}

function download(imgs, i, imgStream) {
    http.get(imgs[i], function(res) {
                            console.log("正在下载第", i, "张图片");

        res.pipe(imgStream);
                            console.log("下载完成");

    })
}