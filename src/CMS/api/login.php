<?php 
	include 'connect.php';

	//获取前端传来的数据
	$phoneNumber = isset($_GET['phoneNumber']) ? $_GET['phoneNumber'] : '';
	$password = isset($_GET['password']) ? $_GET['password'] : '';

	$sql = "select * from user";

	//密码转换后再对比
	$password = md5($password);

	if($phoneNumber){
		$sql .= " where phonenumber='$phoneNumber' and password='$password'";
	}

	//获取查询结果
	$result = $conn->query($sql);

	//使用查询结果	
	//$row = $result->fetch_all(MYSQLI_ASSOC);
	
	//获取密码核对
	if($result->num_rows>0){
		echo 'yes';
	}else{
		echo 'no';
	}

	
	

	//echo json_encode($row,JSON_UNESCAPED_UNICODE);

 ?>