<?php 
	include 'connect.php';

	//获取前端传来的数据
	$goodsId = isset($_GET['goodsId']) ? $_GET['goodsId'] : '';

	//所在的表
	$sql = "select * from listgoods";

	//查询id为$goodsId的商品
	if($goodsId){
		$sql .= " where id='$goodsId'";
	}

	//获取查询结果
	$result = $conn->query($sql);

	//使用查询结果
	$row = $result->fetch_all(MYSQLI_ASSOC);

	//输出数据
	echo json_encode($row,JSON_UNESCAPED_UNICODE);
 ?>