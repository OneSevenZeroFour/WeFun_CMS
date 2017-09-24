<?php 
	include 'connect.php';


	//获取前端数据
	$phoneNumber = isset($_GET['phoneNumber']) ? $_GET['phoneNumber'] : '';
	$password = isset($_GET['password']) ? $_GET['password'] : '';

	//所在的表查找号码是否被注册
	$sql = "select * from user";
	$password = md5($password);

	if($phoneNumber){
		$sql .= " where phonenumber='$phoneNumber'";
	}
	//获取查询结果
	$result = $conn->query($sql);


	//使用查询结果	
	$row = $result->fetch_all(MYSQLI_ASSOC);
	$len = count($row);

	if($len > 0){
		$res = false;
		echo json_encode($res,JSON_UNESCAPED_UNICODE);
		die();
		//关闭连接
		$conn->close();
	}
		
	if($len <= 0){
		
		$sql2 = "insert into user(phonenumber,password) values('$phoneNumber','$password')";

			// 查询数据库
		$result2 = $conn->query($sql2);

		//使用查询结果	
		if($result2){
			$res = true;
			echo json_encode($res,JSON_UNESCAPED_UNICODE);;
		}
		$conn->close();
	}

	// if($result->num_rows>0){
	// 	echo 'fail';
	// }else{
	// 	//密码md5加密
	// 	$password = md5($password);

	// 	$sql = "insert into user (phonenumber,password) values('$phoneNumber','$password')";

	// 	$result = $conn->query($sql);

	// 	if($result){
	// 		echo 'ok';
	// 	}else{
	// 		echo "Error：" . $sql . "<br>" . $conn->error;
	// 	}
	// }
 ?>