<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	
	<title>登录页面</title>
	
	<!-- 设置小图标 -->
	<!-- <link rel="icon" href="图片路径/logo.png" sizes="32x32"> -->
	
	<!-- 引入bootstrap核心css文件 -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/bootstrap.min.css"> 
	
	<!-- 引入jQery文件 -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/jquery-3.3.1.min.js"></script> 
	 
	<!-- 引入bootstrap字体图标库Font-Awesome -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/Font-Awesome/css/font-awesome.min.css" >
	
	<!-- 引入bootstrap核心js文件 -->
	<script src="${pageContext.request.contextPath}/bootstrap/bootstrap.min.js"></script> 
	
	<!-- 引入外部css文件 -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
	
	
	
	<!-- 获取屏幕的长宽 -->
	<!-- <script defer="defer" type="text/javascript">
		function getscreen() {
			var width = screen.width;
			var height = screen.height;
			alert("屏幕分辨率是："+width+","+height);
		}
		getscreen();
	</script> -->
	
	
	<style type="text/css">
		body {
			position:fixed;
		}
		input[type="checkbox"] {
			margin-left: -20px;
		}
	</style>
</head>
<body>


	<div class="container">
        <div class="form row">
            <div class="form-horizontal offset-md-3" id="login_form">
                <h3 class="form-title" style="font-size: 25px; margin-left: -13px; padding-top: 15px;">&nbsp;&nbsp;&nbsp;&nbsp;亦玉科技</h3>
                
                	<div class="col-md-9">
                		<form action="${pageContext.request.contextPath}/common/login.do" method="post">
		                	<!-- 用户名 -->
		                    <div class="form-group">
		                        <i class="fa fa-user fa-lg" style="top: 30px"></i>
		                        <input class="form-control required" type="text" placeholder="Username" id="username" name="username" autofocus="autofocus" maxlength="20" style="width:180px;"/>
		                    </div>
		                    <!-- 密码 -->
		                    <div class="form-group">
		                            <i class="fa fa-lock fa-lg" style="top: 31px"></i>
		                            <input class="form-control required" type="password" placeholder="Password" id="password" name="password" maxlength="8" style="width:180px;"/>
		                    </div>
		                    <!-- 管理员或者是员工登录 -->
		                    <div class="form-group">
		                    	<label for="1">
		                    		<input type="radio" name="usertype" value="employee" id="1" checked="checked"/>员工
		                    	</label>
		                    	&nbsp;&nbsp;
		                    	<label for="2">
		                    		<input type="radio" name="usertype" value="admin" id="2"/>管理员
		                    	</label>
		                    </div>
		                    <!-- 是否记住密码 -->
		                    <div class="form-group">
		                        <label class="checkbox">
		                        	<!-- <input type="hidden" name="remember" value="0"> -->
		                            <input type="checkbox" name="remember" value="1"/>记住密码
		                        </label>
		                    </div>
		                    <!-- 登录 -->
		                    <div class="form-group" style="width: 178px; height: 50px; margin-top: 10px;">
		                        <button type="submit" class="btn btn-success pull-right" name="submit" style="">登录</button>
		                    </div>
		                    
		                    
		                </form>
		                
              	    </div>	
              	    
                	<!-- 新用户注册 -->
		            <div id="regist" class="offset-md-5">
		            	<a href="${pageContext.request.contextPath}/common/regist.do"><u>新用户?请注册</u></a>
		            </div> 
            </div>
            
        </div>
        
	</div>



	

</body>
</html>