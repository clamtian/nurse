<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
	<head></head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>登录</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" type="text/css" />
		<script src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js" type="text/javascript"></script>
		<script src="${pageContext.request.contextPath}/js/bootstrap.min.js" type="text/javascript"></script>
<!-- 引入自定义css文件 style.css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css"/>

<style>
  body{
   margin-top:20px;
   margin:0 auto;
 }
 .carousel-inner .item img{
	 width:100%;
	 height:300px;
 }
 .container .row div{ 
	 /* position:relative;
	 float:left; */
 }
 
font {
    color: #3164af;
    font-size: 18px;
    font-weight: normal;
    padding: 0 10px;
}
 </style>
</head>
<body>







<div class="container" style="width:100%;background:url('${pageContext.request.contextPath}/image/regist_bg.jpg');">
<div class="row"> 

	<div class="col-md-2"></div>
	
	


	<div class="col-md-8" style="background:#fff;padding:40px 80px;margin:30px;border:7px solid #ccc;">
		<font>更改信息</font>USER REGISTER
		<form class="form-horizontal" style="margin-top:5px;" action="${pageContext.request.contextPath }/UserServlet?method=edit" method="post">
			 
			 <div class="form-group">
			    <label for="username" class="col-sm-2 control-label" >受护理人姓名</label>
			    <div class="col-sm-6">
			      <input type="text" class="form-control" id="username" placeholder="${user.username }" name="username">
			    </div>
			  </div>
			  
			  <div class="form-group">
			    <label for="inputEmail3" class="col-sm-2 control-label">年龄</label>
			    <div class="col-sm-6">
			      <input type="number" class="form-control" id="inputEmail3" placeholder="${user.userage }" name="userage">
			    </div>
			  </div>
			  
			  <div class="form-group opt">  
			  	<label for="inlineRadio1" class="col-sm-2 control-label">性别</label>  
			  	<div class="col-sm-6">
			    <label class="radio-inline">
			  		<input type="radio"  id="inlineRadio1"  name="usersex" value="男"> 男
				</label>
				<label class="radio-inline">
			  		<input type="radio"  id="inlineRadio2"  name="usersex" value="女"> 女
				</label>
				</div>
			  </div>	
			  	
			   <div class="form-group">
			    <label for="inputPassword3" class="col-sm-2 control-label">身份证号</label>
			    <div class="col-sm-6">
			      <input type="number" class="form-control" id="inputPassword3" placeholder="${user.idcard }" name="idcard">
			    </div>
			  </div>
			  		
			   <div class="form-group">
			    <label for="inputPassword3" class="col-sm-2 control-label">房间号</label>
			    <div class="col-sm-6">
			      <input type="number" class="form-control" id="inputPassword3" placeholder="${user.roomid }" name="roomid">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="inputPassword3" class="col-sm-2 control-label">楼号</label>
			    <div class="col-sm-6">
			      <input type="number" class="form-control" id="inputPassword3" placeholder="${user.building}" name="building">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="inputPassword3" class="col-sm-2 control-label">档案号</label>
			    <div class="col-sm-6">
			      <input type="number" class="form-control" id="inputPassword3" placeholder="${user.recordid }" name="recordid">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="inputPassword3" class="col-sm-2 control-label">老人类型</label>
			    <div class="col-sm-6">
			      <input type="text" class="form-control" id="inputPassword3" placeholder="${user.eldertype }" name="eldertype">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="date" class="col-sm-2 control-label">入住时间</label>
			    <div class="col-sm-6">
			      <input type="date" class="form-control"  placeholder="${user.checkingdate }" name="checkingdate">		      
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="date" class="col-sm-2 control-label">合同到期时间</label>
			    <div class="col-sm-6">
			      <input type="date" class="form-control"  placeholder="${user.expirationdate }" name="expirationdate">		      
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="inputPassword3" class="col-sm-2 control-label">联系电话</label>
			    <div class="col-sm-6">
			      <input type="number" class="form-control" id="inputPassword3" placeholder="${user.contacttel }" name="contacttel">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="inputPassword3" class="col-sm-2 control-label">床号</label>
			    <div class="col-sm-6">
			      <input type="number" class="form-control" id="inputPassword3" placeholder="${user.bedid }" name="bedid">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="inputPassword3" class="col-sm-2 control-label">身心状况</label>
			    <div class="col-sm-6">
			      <input type="text" class="form-control" id="inputPassword3" placeholder="${user.psytate }" name="psytate">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="inputPassword3" class="col-sm-2 control-label">注意事项</label>
			    <div class="col-sm-6">
			      <input type="text" class="form-control" id="inputPassword3" placeholder="${user.atten }" name="atten">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="date" class="col-sm-2 control-label">出生日期</label>
			    <div class="col-sm-6">
			      <input type="date" class="form-control"  placeholder="${user.birthday }" name="birthday">		      
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="inputPassword3" class="col-sm-2 control-label">身高</label>
			    <div class="col-sm-6">
			      <input type="number" class="form-control" id="inputPassword3" placeholder="${user.height }" name="height">
			    </div>
			  </div>
			  <div class="form-group">
			    <div class="col-sm-offset-2 col-sm-10">
			      <input type="submit"  width="100" value="确认更改" name="submit" 
				    style="background: url('${pageContext.request.contextPath}/images/register.gif') no-repeat scroll 0 0 rgba(0, 0, 0, 0);
				    height:35px;width:100px;color:white;">
			    </div>
			  </div>
			  
			  
			  
			</form>
	</div>
	
	<div class="col-md-2"></div>
  
</div>
</div>

	  
	
	<div style="margin-top:50px;">
			<img src="${pageContext.request.contextPath}/image/footer.jpg" width="100%" height="78" alt="我们的优势" title="我们的优势" />
		</div>

		<div style="text-align: center;margin-top: 5px;">
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

</body></html>




