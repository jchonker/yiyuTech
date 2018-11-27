<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date,java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>主页导航栏</title>

	<!-- 引入bootstrap核心css文件 -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/bootstrap.min.css"> 
	
	<!-- 引入jQery文件 -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/jquery-3.3.1.min.js"></script> 
	 
	<!-- 引入bootstrap字体图标库Font-Awesome -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/Font-Awesome/css/font-awesome.min.css" >
	
	<!-- 引入bootstrap核心js文件 -->
	<script src="${pageContext.request.contextPath}/bootstrap/bootstrap.min.js"></script> 
	
	<!-- 引入外部css文件 -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style_navigation.css">
	
	
	
	<script language="javascript">
		
		//用原生js获取系统时间
	    function realSysTime(clock){        
			 var now=new Date();            //创建Date对象        
			 var year=now.getFullYear();    //获取年份        
			 var month=now.getMonth();    //获取月份 
			 var month=month+1;        
			 var date=now.getDate();        //获取日期        
			 var day=now.getDay();        //获取星期        
			 var hour=now.getHours();    //获取小时        
			 var minu=now.getMinutes();    //获取分钟        
			 var sec=now.getSeconds();    //获取秒钟               
			 var arr_week=new Array("星期日","星期一","星期二","星期三","星期四","星期五","星期六");        
			 var week=arr_week[day];        //获取中文的星期        
			 time=year+"年"+month+"月"+date+"日 "+week+" "+hour+":"+minu+":"+sec;    //组合系统时间       
			 clock.innerHTML=time;    //显示系统时间    
		 }  
 
		 window.onload=function(){     
			    window.setInterval("realSysTime(clock)",1000);    //实时获取并显示系统时间   
		 } 
		   
		
		
		 //用jqery获取系统时间
		 /* setInt erval(function() {
		     var now = (new Date()).toLocaleString();
		     $('#current-time').text(now);
		 }, 100 0); */
		

	</script>


	
</head>
<body>

	<!-- 显示公司名称及修改密码，退出系统 -->
	<div id="container1">
		<!-- 公司名称 -->
		<div id="container11">
			<h3>亦玉科技有限公司</h3>
		</div>
		<!-- 重置密码和退出系统 -->
		<div id="container12" class="">
			<i class="fa fa-key"></i>
			<a href="">修改密码</a>&nbsp;&nbsp;&nbsp;
			<i class="fa fa-cog"></i>
			<a href="${pageContext.request.contextPath}/common/quit.do">退出系统</a>
		</div>
	</div>
	
	
	<!-- 显示登录者及系统时间 -->
	<div id="container2">
		<!-- 欢迎登录者及显示用户角色 -->
		<div id="container21">
			<!-- 角色获取：controller接收login页面传过来的name为user的值，跳转到此页面时，将user的值也传过来，这样用EL表达式就能获取到了 -->
			欢迎您${key}jchonker&nbsp;
			角色：${user}admin
		</div>
		<!-- 显示当前系统时间 -->
		<div id="container22">
			当前系统时间：
			<span id="clock"></span>
		</div>
	</div>
	
	

	
	
</body>
</html>