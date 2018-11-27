<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<!-- 引入bootstrap核心css文件 -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/bootstrap.min.css"> 
	
	<!-- 引入jQery文件 -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/jquery-3.3.1.min.js"></script> 
	 
	<!-- 引入bootstrap字体图标库Font-Awesome -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/Font-Awesome/css/font-awesome.min.css" >
	
	<!-- 引入bootstrap核心js文件 -->
	<script src="${pageContext.request.contextPath}/bootstrap/bootstrap.min.js"></script> 
	

</head>
<body>
	
	<!-- 引入导航栏 -->
	<jsp:include page="navigation.jsp"></jsp:include>
	
	<div style="text-align:center; margin-top:100px;">
		用户名或者密码错误！<h5><a href="${pageContext.request.contextPath}/common/quit.do">重新登陆</a></h5>
	</div>
</body>
</html>