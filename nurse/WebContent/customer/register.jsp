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
		<font>注册</font>USER REGISTER
		<form class="form-horizontal" style="margin-top:5px;" action="${pageContext.request.contextPath }/UserServlet?method=regist" method="post">
			 
			 <div class="form-group">
			    <label for="username" class="col-sm-2 control-label" >受护理人姓名</label>
			    <div class="col-sm-6">
			      <input type="text" class="form-control" id="username" placeholder="请输入姓名" name="username">
			    </div>
			  </div>
			  
			  <div class="form-group">
			    <label for="inputEmail3" class="col-sm-2 control-label">年龄</label>
			    <div class="col-sm-6">
			      <input type="number" class="form-control" id="inputEmail3" name="userage">
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
			      <input type="number" class="form-control" id="inputPassword3" placeholder="请输入身份证号" name="idcard">
			    </div>
			  </div>
			  		
			   <div class="form-group">
			    <label for="inputPassword3" class="col-sm-2 control-label">房间号</label>
			    <div class="col-sm-6">
			      <input type="number" class="form-control" id="inputPassword3" placeholder="请输入房间号" name="roomid">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="inputPassword3" class="col-sm-2 control-label">楼号</label>
			    <div class="col-sm-6">
			      <input type="number" class="form-control" id="inputPassword3" placeholder="请输入楼号" name="building">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="inputPassword3" class="col-sm-2 control-label">档案号</label>
			    <div class="col-sm-6">
			      <input type="number" class="form-control" id="inputPassword3" placeholder="请输入档案号" name="recordid">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="inputPassword3" class="col-sm-2 control-label">老人类型</label>
			    <div class="col-sm-6">
			      <input type="text" class="form-control" id="inputPassword3" name="eldertype">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="date" class="col-sm-2 control-label">入住时间</label>
			    <div class="col-sm-6">
			      <input type="date" class="form-control"  name="checkingdate">		      
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="date" class="col-sm-2 control-label">合同到期时间</label>
			    <div class="col-sm-6">
			      <input type="date" class="form-control"  name="expirationdate">		      
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="inputPassword3" class="col-sm-2 control-label">联系电话</label>
			    <div class="col-sm-6">
			      <input type="number" class="form-control" id="inputPassword3" name="contacttel">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="inputPassword3" class="col-sm-2 control-label">床号</label>
			    <div class="col-sm-6">
			      <input type="number" class="form-control" id="inputPassword3" name="bedid">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="inputPassword3" class="col-sm-2 control-label">身心状况</label>
			    <div class="col-sm-6">
			      <input type="text" class="form-control" id="inputPassword3" name="psytate">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="inputPassword3" class="col-sm-2 control-label">注意事项</label>
			    <div class="col-sm-6">
			      <input type="text" class="form-control" id="inputPassword3" name="atten">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="date" class="col-sm-2 control-label">出生日期</label>
			    <div class="col-sm-6">
			      <input type="date" class="form-control"  name="birthday">		      
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="inputPassword3" class="col-sm-2 control-label">身高</label>
			    <div class="col-sm-6">
			      <input type="number" class="form-control" id="inputPassword3" placeholder="cm" name="height">
			    </div>
			  </div>
			  <div class="form-group">
			    <div class="col-sm-offset-2 col-sm-10">
			      <input type="submit"  width="100" value="添加" name="submit" 
				    style="background: url('${pageContext.request.contextPath}/images/register.gif') no-repeat scroll 0 0 rgba(0, 0, 0, 0);
				    height:35px;width:100px;color:white;">
			    </div>
			  </div>
			  
			  
			  
			</form>
	</div>
	
	<div class="col-md-2"></div>
  
</div>
</div>

</body></html>




