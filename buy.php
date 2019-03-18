<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>选座购票</title>
	<style type="text/css">

		#movie{width: 800px;margin: 0 auto;}
		#m_info{width: 349px;float: left;border-right:1px solid #333;}
		#m_order{width: 400px;height: 200px;float: left;margin-left: 50px;}
		p{text-align:left;color: #777;}
		p span{font-size:18px;color:#333;}
		#code{width: 900px;margin: 0 auto;overflow-x: scroll;}
		 .seatCharts{width: 35px;height: 35px;border-radius:5px;margin: 2px;float: left;}
		 .available{background-color: #b9dea0;}
		 .selected{background-color: #e6cac4;}
		 .available:hover{background-color: #76b474;}
		 .clear{clear:both;}
		#seat-map{ border-right: 1px dotted #adadad;
				    
				    list-style: outside none none;
				    max-height: 600px;
				    overflow-x: auto;
				    padding: 20px;
				    width: 1200px;}
	</style>
</head>
<body>

	<form action="./dobuy.php" method="post">
	<div id="movie">
		<br><br><br>
		<div id="m_info">
			<p>影片名称:&nbsp;&nbsp;&nbsp;<span ></span></p>
			<p>放映厅:&nbsp;&nbsp;&nbsp;<span ></span></p>
			<p>影片时长:&nbsp;&nbsp;&nbsp;<span ></span></p>
			<p>日期:&nbsp;&nbsp;&nbsp;<span ></span></p>
			<p>时间:&nbsp;&nbsp;&nbsp;<span ></span></p>
		</div>
		<div id="m_order">
			<p>手机号:&nbsp;&nbsp;&nbsp;<span ></span></p>
			<p>数量:&nbsp;&nbsp;&nbsp;<span ></span></p>
			<p>座位:&nbsp;&nbsp;&nbsp;<span ></span></p>
			<p>单价:&nbsp;&nbsp;&nbsp;<span >&nbsp;&nbsp;元</span></p>
			<p>总计:&nbsp;&nbsp;&nbsp;<span >&nbsp;&nbsp;元</span></p>
		</div>
		<div style="clear:both"></div>
		
		<h3><span>请核对以上信息,如确认无误后,请您在2分钟之内完成付款操作</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>
		<button style="background-color: #d9534f;border-color: #d43f3a;color: #fff;font-size: 18px;">确认付款</button>
		<hr>
	</div>
	</form>
	<div style="width: 100%;height: 100px;clear:both"></div>


</body>
</html>