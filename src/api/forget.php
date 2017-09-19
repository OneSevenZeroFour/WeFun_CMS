<?php 
	include 'connet.php';


	//获取前端传来的数据
	$phoneNumber = isset($_GET['phoneNumber']) ? $_GET['phoneNumber'] : '';
	$password = isset($_GET['password']) ? $_GET['password'] : '';

	$password = md5($password);

	// 查找所有用户信息
	$sql = "update user set password='$password' where phonenumber='$phoneNumber'";

	$result = $conn->query($sql);

	if($result){
		echo "密码修改成功";
	}

	//关闭连接
	$conn->close();
 ?>