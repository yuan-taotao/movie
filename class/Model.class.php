<?php
//定义model类
class Model{
	//成员属性
	public $pdo;
	public $sql;//sql语句
	public $redis;
	public $key;
	//成员方法
	// 构造方法
	public function __construct(){
		// 实例化redis对象
		$this->redis=new Redis;
		// 连接redis服务
		$this->redis->connect('localhost',6379);
	}
	public function get($sql){
		// 拼键名
		$this->key=md5($sql);
		// var_dump($this->key);
		// 获取缓存数据
		$data=json_decode($this->redis->get($this->key),true);
		 if (empty($data)) {
			$this->sql=$sql;
			$this->pdo=new PDO("mysql:host=localhost;dbname=dy",'root','');
			$this->pdo->exec("set names utf8");
			//执行sql
			$stmt=$this->pdo->query($sql);
			//获取结果
			$data=$stmt->fetchAll(PDO::FETCH_ASSOC);
			$this->redis->set($this->key,json_encode($data));
		 }
		
		return $data;
	}
} 
 ?>