<?php 
	include 'connect.php';

	//获取前端传来的数据
	$phoneNumber = isset($_GET['phoneNumber']) ? $_GET['phoneNumber'] : '233';
	//$password = isset($_GET['password']) ? $_GET['password'] : '233';
	
	
	//所在的表查找号码是否被注册
	$sql = "select * from user where phonenumber='$phoneNumber'";

	//获取查询结果
	$result = $conn->query($sql);

	if($result->num_rows>0){
		echo 'fail';
	}else{
		echo 'success';
	}
	

	// else{
	// 	//密码md5加密
	// 	//$password = md5($password);
	// 	echo 'success';
	// }

	//使用查询结果	
	// $row = $result->fetch_all(MYSQLI_ASSOC);
	
	// echo json_encode($row,JSON_UNESCAPED_UNICODE);
	//echo 'success';

 ?>