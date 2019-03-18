<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>选择座位</title>
	<link rel="stylesheet" href="public/bs/css/bootstrap.min.css">
	<script type="text/javascript" src="public/js/jquery-1.8.3.min.js"></script>
	<style type="text/css">

		#movie{width: 800px;margin: 0 auto;}
		#m_info{width: 349px;float: left;border-right:1px solid #333;}
		#m_order{width: 400px;height: 200px;float: left;margin-left: 50px;}
		p{text-align:left;color: #777;}
		p span{font-size:18px;color:#333;}
		#code{width: 900px;margin: 0 auto;overflow-x: scroll;}
		 .seatCharts{width:35px;height: 35px;border-radius:5px;margin: 2px;float: left;}
		 .available{background-color: #b9dea0;}
		 .selected{background-color: #e6cac4;}
		 .available:hover{background-color: #76b474;}
		 .clear{clear:both;}
		#seat-map{ border-right: 1px dotted #adadad;
				    list-style: outside none none;
				  /*  max-height: 1000px;*/
				    overflow-x: auto;
				    padding: 20px;
				    width: 1200px;}
	</style>
</head>
<body>
	<form action="./order.php" method="post" id="ff">
	<div id="movie">
		<?php
		include './class/Model.class.php';
		$model=new Model();
		$sql="select * from relss where id=".$_GET['id'];
		 //echo $sql;
		$res=$model->get($sql)[0];
		//var_dump($res);
		?>
		<div id="m_info">
			<p>影片名称:&nbsp;&nbsp;&nbsp;<span ><?=$res['m_name']?></span></p>
			<p>放映厅:&nbsp;&nbsp;&nbsp;<span ><?=$res['h_name']?></span></p>
			<p>影片时长:&nbsp;&nbsp;&nbsp;<span ><?=$res['m_time']?></span></p>
			<p>时间:&nbsp;&nbsp;&nbsp;<span ><?=$res['start_time']?>--<?=$res['end_time']?>
				</span></p>
		</div>
		<div id="m_order">
			<br>
			<br>
			<br>
			<p>手机号:&nbsp;&nbsp;&nbsp;<span ><input type="text" name="phone"><span id="ss"></span></span></p>
			<input type="hidden" name="r_id" value="<?=$_GET['id']?>">
			<p><span ><input type="submit" class="btn btn-success" value="购买"></span></p>
			<div class="available" style="width: 70px;height: 30px;border-radius:5px;text-align:center;line-height:30px;float:left">可选</div>
			<div class="selected" style="width: 70px;height: 30px;border-radius:5px;text-align:center;line-height:30px;float:left">已售</div>
		</div>
		<div style="clear:both"></div>
		<hr>
	</div>
	<div class="container">
		<?php
			$sql='select * from hall where id='.$_GET["h_id"];
			// echo $sql;
			$data=$model->get($sql)[0];
			$str=$data['HallLayout'];
			// var_dump($str);
			// var_dump($str[0]);
			
		?>
		<div id="code">
			<div id="seat-map">
				<div class="clear seatCharts">1</div>
				<?php
				// 列初始化
				$j=0;
				// 行初始化
				$k=1;
				$redis=new Redis();
				$redis->connect('localhost',6379);
				for ($i=0; $i <strlen($str) ; $i++) { 
					if ($str[$i]=="_") {
						// 输出空白div
						echo '<div class="seatCharts"></div>';
					}elseif ($str[$i]=="e") {
						$j++;
						// 组合元素
						$s=$k."_".$j;
						// 检测座位是否在已售集合中
						$jc=$redis->sismember("movie:".$_GET['id'],$s);
						if ($jc) {
							echo "<div class='selected seatCharts'>".$j."</div>";
						}else{
						
						// 输出div
						echo '<div class="available seatCharts"><input type="checkbox" name="s_code[]" value="'.$k."_".$j.'">'.$j.'</div>';
						}
					}elseif ($str[$i]==",") {
						// 列初始化
						$j=0;
						// 换行 ++
						$k++;
						echo "<div class='clear seatCharts'>".$k."</div>";
					}
				}
				?>
			</div>
			
		</div>
	</div>
	</form>
	<div style="width: 100%;height: 100px;clear:both"></div>
</body>

</html>