<?php
// var_dump($_POST);
$a=implode(",",$_POST['s_code']);
// var_dump($a);
$data=array();
$data['order_code']=rand(1,9999);
$data['r_id']=$_POST['r_id'];
$data['m_id']=$_POST['r_id'];
$data['num']=count($_POST['s_code']);
$data['s_code']=$a;
$data['phone']=$_POST['phone'];
$data['static']=0;
$data['order_time']=time();

$redis=new Redis();
$redis->connect('localhost',6379);
foreach ($_POST['s_code'] as $v) {
	$redis->sadd('movie:'.$_POST['r_id'],$v);
}
// var_dump($data);
$pdo=new PDO("mysql:host=localhost;dbname=dy","root","");
$pdo->exec("set names utf8");
// 准备sql
$sql="insert into morder(order_code,r_id,m_id,num,s_code,phone,static,order_time) values(:order_code,:r_id,:m_id,:num,:s_code,:phone,:static,:order_time)";        

// 返回预处理
$stm=$pdo->prepare($sql);
// 执行sql
$stm->execute($data);
// 返回受影响行数
$row=$stm->rowCount();
if($row){
	echo "下单成功";
}
?>