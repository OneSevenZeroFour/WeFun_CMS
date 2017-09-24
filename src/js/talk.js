var ioFunc = require("socket.io");

var http = require("http");
//创建一个服务器
var server = require('http').createServer();
var io = ioFunc(server);

var userlist = [];
io.on('connection', function(socket) {
	// socket.on('chat', function(data) {
	// 	console.log(data);
		
	// 	io.emit("getMessage",data)
	// });
	
	socket.on('adduser', function(data) {
		console.log(socket.id)
		userlist.push({
			id: socket.id,
			name: data.nameid
		});
		console.log(data);
		io.emit("showuserlist", userlist)
	});

	socket.on('chat', function(data) {
		console.log(socket.id)
		if(data.toId) {
			//点对点聊天
			io.sockets.sockets[data.toId].emit("getMessage", data.message);
			console.log(data.message);
		}
	});
});
server.listen(2000);
console.log('服务器启动');