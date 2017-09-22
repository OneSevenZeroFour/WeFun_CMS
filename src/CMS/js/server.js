/* 
* @Author: Marte
* @Date:   2017-09-13 18:59:00
* @Last Modified by:   Marte
* @Last Modified time: 2017-09-22 19:24:01
*/
var http = require("http");
var url = require('url');
var querystring = require('querystring');
// 引入第三方模块
var mysql = require('mysql');
// 配置连接参数
var connection = mysql.createConnection({
	host:'localhost',
	user:'liangme',
	password:'12345',
	database:'muyingzhijia'
});
// 执行连接
connection.connect();

// 解析url的专用模块
// request是一个stream流
http.createServer(function(request,response){
	var post = '';
	request.on('data',function(chunk){
		post += chunk;
	});
	request.on('end',function(){
		var pathname = url.parse(request.url).pathname;
		var posts = querystring.parse(post);
		console.log(posts);
		// 解决跨越
		response.setHeader("Access-Control-Allow-Origin", "*");
		switch(pathname){
			// 分页
			case "/select":
				connection.query(`select * from listgoods order by id limit ${posts.page},15`,function(error,results,fields){
					if(error) throw error;
					console.log('the solution is:',results);
					response.end(JSON.stringify({
						status:1,
						results
					}))
				});
				break;
			// 模糊搜索
			case "/inquire":
				connection.query(`SELECT * FROM listgoods WHERE ${posts.sname} like '%${posts.connect}%'`,function(error,results,fields){
					if(error) throw error;
					console.log('the solution is:',results);
					response.end(JSON.stringify({
						status:1,
						results
					}))
				});
				break;
			// 搜索ID
			case "/select1":
				connection.query(`select * from listgoods where id = ${posts.id}`,function(error,results,fields){
					if(error) throw error;
					console.log('the solution is:',results);
					response.end(JSON.stringify({
						status:1,
						results
					}))
				});
				break;
			// 搜索所有信息
			case "/selectAll":
				connection.query('select COUNT(*) from listgoods',function(error,results,fields){
					if(error) throw error;
					console.log('the solution is:',results);
					response.end(JSON.stringify({
						status:1,
						results
					}))
				});
				break;
			// 添加商品信息
			case '/insert':
				connection.query(`insert into listgoods(imgurl,title,description,price) values("${posts.imgurl}","${posts.title}","${posts.description}","${posts.price}")`,function(error,results,fields){
						if(error) throw error;
						console.log('The solution is:',results);
						response.end(JSON.stringify({
							status:1,
							results
						}))
					});
				break;
			// 删除商品信息
			case '/delete':
				connection.query(`DELETE FROM listgoods where id = "${posts.id}"`,function(error,results,fields){
					if(error) throw error;console.log(posts.id)
					console.log('The solution is:',results);
					response.end(JSON.stringify({
						status:1,
						results
					}))
				});
				break;
			// 修改商品信息
			case '/amend':
				connection.query(`update listgoods set imgurl="${posts.imgurl}",title="${posts.title}",description="${posts.description}",price="${posts.price}" where id=${posts.id}`,function(error,results,fields){
					if(error) throw error;
					console.log('The solution is:',results);
					response.end(JSON.stringify({
						status:1,
						results
					}))
					console.log(posts)
				});
				break;
			// 查询登录账号和密码
			case "/login":
				connection.query(`select * from user where phonenumber = "${posts.phonenumber}" and password = "${posts.password}"`,function(error,results,fields){
					if(error) throw error;
					console.log('the solution is:',results);
					response.end(JSON.stringify({
						status:1,
						results
					}))
				});
				break;
		}
	});
}).listen(12345)
console.log('启动服务器')