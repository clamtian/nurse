<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>

<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>病人详情</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	type="text/css" />
<script src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js"
	type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"
	type="text/javascript"></script>
<!-- 引入自定义css文件 style.css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css" type="text/css" />

<style>
body {
	margin-top: 20px;
	margin: 0 auto;
}

.carousel-inner .item img {
	width: 100%;
	height: 300px;
}
</style>
</head>

<body>


<div class="container" style="width:100%;background:url('${pageContext.request.contextPath}/image/regist_bg.jpg');">


	<div class="container">
		<div class="row">

			<div style="margin: 0 auto; width: 950px;">

				<div class="col-md-6">
						<div>
							<strong>${user.username }</strong>
						</div>
						<div
							style="border-bottom: 1px dotted #dddddd; width: 350px; margin: 10px 0 10px 0;">
							<div>ID：${user.id }</div>
						</div>
						<div style="margin: 10px 0 10px 0;">
							年龄: <strong style="color: #ef0101;">${user.userage }</strong>
						</div>
						<div style="margin: 10px 0 10px 0;">
							性别: <strong style="color: #ef0101;">${user.usersex }</strong>
						</div>
						<div style="margin: 10px 0 10px 0;">
							身份证号: <strong style="color: #ef0101;">${user.idcard }</strong>
						</div>
						<div style="margin: 10px 0 10px 0;">
							生日: <strong style="color: #ef0101;">${user.birthday }</strong>
						</div>
						<div style="margin: 10px 0 10px 0;">
							身高: <strong style="color: #ef0101;">${user.height }</strong>
						</div>
						<div style="margin: 10px 0 10px 0;">
							楼房号: <strong style="color: #ef0101;">${user.building }-${user.roomid }</strong>
						</div>
						<div style="margin: 10px 0 10px 0;">
							床号: <strong style="color: #ef0101;">${user.bedid }</strong>
						</div>
						<div style="margin: 10px 0 10px 0;">
							档案号: <strong style="color: #ef0101;">${user.recordid }</strong>
						</div>
						<div style="margin: 10px 0 10px 0;">
							病人类型: <strong style="color: #ef0101;">${user.eldertype }</strong>
						</div>
						<div style="margin: 10px 0 10px 0;">
							入住时间: <strong style="color: #ef0101;">${user.checkingdate }</strong>
						</div>
						<div style="margin: 10px 0 10px 0;">
							合同到期时间: <strong style="color: #ef0101;">${user.expirationdate }</strong>
						</div>
						<div style="margin: 10px 0 10px 0;">
							联系电话: <strong style="color: #ef0101;">${user.contacttel }</strong>
						</div>
						<div style="margin: 10px 0 10px 0;">
							身心状况: <strong style="color: #ef0101;">${user.psytate }</strong>
						</div>
						<div style="margin: 10px 0 10px 0;">
							注意事项: <strong style="color: #ef0101;">${user.atten }</strong>
						</div>
				</div>
			</div>
		</div>
	</div>
	<div style="text-align: center; margin-top: 5px;">
		<ul class="list-inline">
			<li><a>关于我们</a></li>
			<li><a>联系我们</a></li>
			<li><a>招贤纳士</a></li>
			<li><a>法律声明</a></li>
			<li><a>友情链接</a></li>
			<li><a>服务声明</a></li>
			<li><a>广告声明</a></li>
		</ul>
	</div>
</div>
</body>

</html>