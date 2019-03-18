<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>电影列表</title>
	<link rel="stylesheet" href="public/bs/css/bootstrap.min.css">
	<script src="public/bs/js/jquery.min.js"></script>
	<script src="public/bs/js/bootstrap.min.js"></script>
	<script src="public/bs/js/holder.min.js"></script>
	<script src="public/bs/js/application.js"></script>

	<style type="text/css">
		.moves img{width: 200px;}
		.moves th{width: 150px;}
	</style>
</head>
<body>
	<div class="container">
		<h3 class="text-center"><a href="">今日放映</a></h3>
		<hr>
		<br>
		<div class="bs-example">
      <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
          <li data-target="#carousel-example-generic" data-slide-to="1" class=""></li>
          <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
          <li data-target="#carousel-example-generic" data-slide-to="3" class=""></li>

        </ol>
        <div class="carousel-inner">
          <div class="item active">
            <img src="public/a.jpg" style="min-width:100%" alt="First slide">
            <div class="carousel-caption">第一个轮播图</div>
          </div>
          <div class="item">
            <img src="public/b.jpg" style="min-width:100%" alt="Second slide">
            <div class="carousel-caption">第二个轮播图</div>

          </div>
          <div class="item ">
            <img src="public/c.jpg" style="min-width:100%" alt="Third slide">
            <div class="carousel-caption">第三个轮播图</div>

          </div>
           <div class="item ">
            <img src="public/d.jpg" style="min-width:100%" alt="Third slide">
            <div class="carousel-caption">第四个轮播图</div>

          </div>
        </div>
        <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
          <span class="glyphicon glyphicon-chevron-left"></span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
          <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
      </div>
    </div>
		<table class="table table-bordered table-hover table-striped table-condensed">
			<tr>
				<th>影片</th>
				<th>影片名称</th>
				<th>导演</th>
				<th>主演</th>
				<th>放映信息</th>
				<th>时长</th>
				<th>票价</th>
				<th>操作</th>
			</tr>
			<?php
			include "./class/Model.class.php";
			$model=new Model();
			$sql="select *,m.id from movie as m,relss as r where m.id=r.m_id group by m.id";
			$data=$model->get($sql);
			// var_dump($data);
			foreach ($data as $v) {
		     // var_dump($v);		

			?>

			<tr class="moves">
				<th><img src="<?php echo "./public".$v['picurl'];?>"></img></th>
				<th><?=$v['m_name']?></th>
				<th><?=$v['m_director']?></th>
				<th><?=$v['actor']?></th>
				<th style="width:250px"><?=$v['m_type']?></th>
				<th style="width:100px"><?=$v['m_time']?></th>
				<th style="width:100px"><?=$v['m_price']?></th>
				<th style="width:100px"><a class="btn btn-success" href="mvinfo.php?id=<?=$v['id']?>">查看详情</a></th>
			</tr>	
			<?php
			}
			?>		
		</table>
	</div>
</body>
</html>