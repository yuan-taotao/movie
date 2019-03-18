<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>选择场次</title>
	<link rel="stylesheet" href="public/bs/css/bootstrap.min.css">

	<style type="text/css">
		.moves img{width: 200px;}
		.moves th{width: 150px;}
		#movie{margin: 0 auto;}
		#m_pic{width: 1000px;}
		#m_info{width: 1000px;text-align:left;color: #777;}
		#m_info p span{font-size:18px;color:#333;}
	</style>
</head>
 <body>
 	<div class="container">
	
		<h3 class="text-center"><a href="" >详情介绍</a></h3>

		<div id="movie">
			<div id="m_pic">影片</div>
			<?php
			include "./class/Model.class.php";
			$model=new Model();
			$sql="select * from relss,movie where movie.id=relss.m_id and movie.id=".$_GET['id']." group by relss.m_id";
			// echo $sql;
			$data=$model->get($sql)[0];
			// var_dump($data);
			?>
			<img src="<?php echo "./public".$data['picurl']?>" alt="">
			<div id="m_info">
				<p>影片名称:&nbsp;&nbsp;&nbsp;<span ><?=$data['m_name']?></span></p>
				<p>影片类型:&nbsp;&nbsp;&nbsp;<span ><?=$data['m_type']?></span></p>
				<p>影片地区:&nbsp;&nbsp;&nbsp;<span ><?=$data['country_area']?></span></p>
				<p>影片时长:&nbsp;&nbsp;&nbsp;<span ><?=$data['m_time']?></span></p>
				<p>影片导演:&nbsp;&nbsp;&nbsp;<span ><?=$data['m_director']?></span></p>
				<p>影片主演:&nbsp;&nbsp;&nbsp;<span ><?=$data['actor']?></span></p>
				<p>影片剧情:&nbsp;&nbsp;&nbsp;<span ><?=$data['content']?></span></p>
			</div>
			<h3 class="text-center"><a href="" >场次列表</a></h3>
			<hr>
			<br>
			<table class="table table-bordered table-hover table-striped table-condensed">
				<tr>
				
					<th>放映厅</th>
					<th>开场时间</th>
					<th>结束时间</th>
					<th>票价</th>
					<th>座位数</th>
					<th>已售</th>
					<th>操作</th>
				</tr>
				<?php
				// include "./class/Model.class.php";
				$model=new Model();
				$sql="select * from relss where relss.m_id=".$_GET['id'];
				 // echo $sql;
				$res=$model->get($sql);
				 $redis=new Redis();
				 $redis->connect('localhost',6379);
				 foreach ($res as $v) {
				 	  // 获取集合中的个数
				 	  $num=$redis->ssize('movie:'.$v['id']);
				?>
				<tr class="moves">
					<th><?=$v['h_name']?></th>
					<th><?=$v['start_time']?></th>
					<th><?=$v['end_time']?></th>
					<th><?=$v['m_price']?></th>
					<th><?=$v['seating']?></th>
					<th><?=$num?></th>
					<th style="width:100px"><a href="select.php?h_id=<?=$v['h_id']?>&id=<?=$v['id']?>">去选座</a></th>
				</tr>	
				<?php
				 }
				?>		
			</table>
		</div>
	</div>
	<div style="width: 100%;height: 100px;"></div>
 </body>
 </html>