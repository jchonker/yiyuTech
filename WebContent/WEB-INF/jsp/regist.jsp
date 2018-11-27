<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注册页面</title>

	<!-- 引入bootstrap核心css文件 -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/bootstrap.min.css"> 
	
	<!-- 引入jQery文件 -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/jquery-3.3.1.min.js"></script> 
	 
	<!-- 引入bootstrap字体图标库Font-Awesome -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/Font-Awesome/css/font-awesome.min.css" >
	
	<!-- 引入bootstrap核心js文件 -->
	<script src="${pageContext.request.contextPath}/bootstrap/bootstrap.min.js"></script>

	<!-- 引入外部css文件 -->
	<link  rel="stylesheet"  href="${pageContext.request.contextPath}/css/regist.css">
	
</head>
<body>
	
	<!-- 引入导航栏 -->
	<jsp:include page="navigation.jsp"></jsp:include>
	
	<!-- 注册用户主页面 -->
	
	<!-- 管理信息的操作 -->	
	<div id="container3">
		<div id="container31">
			<h4>员工信息注册表</h4>
		</div>
		<div id="container32">
			<i class="fa fa-refresh"></i>
			<a href="">信息重置</a>&nbsp;&nbsp;&nbsp;&nbsp;
			<i class="fa fa-file"></i>
			<a href="">保存信息</a>
		</div>
			
	</div>
	
		
	
	<!-- 员工基本信息内容 -->
	<div id="content1">
		<!--表格 -->
		<table border="1" id="table">
			<tr id="tr1" class="tr">
				<td>姓名</td>
				<td><input class="text" type="text" name="name" value=""></td>
				<td>员工编号</td>
				<td><input class="text" type="text" name="empid" value=""></td>
				<td>薪资</td>
				<td><input class="text" type="text" name="salary" value=""></td>
				<td id="showAndUpload" rowspan="4">
					<!-- 显示员工的照片 -->
					<div id="block1" style="height: 140px;">
						<img style="display: inline-block;  height: 140px;" alt="请上传文件" name="photo" class="photo"  src="">
					</div>
					
					<!-- 上传文件需要的2个jar包还没有导入 -->
					<div id="block2"  style="margin-button: 10px;">
						<input class="file" type="file" value="未选择文件">
						<input type="button" onclick="uploadFile();" value="上传"/>
					</div>
					
				</td>
			</tr>
			<tr id="tr2" class="tr">
				<td>部门</td>
				<td><input class="text" type="text" name="department" value=""></td>
				<td>性别</td>
				<td><input class="text" type="text" name="sex" value=""></td>
				<td>毕业学校</td>
				<td><input class="text" type="text" name="school" value=""></td>
			</tr>
			<tr id="tr3" class="tr">
				<td>年龄</td>
				<td><input class="text" type="text" name="age" value=""></td>
				<td>是否已婚</td>
				<td><input class="text" type="text" name="married" value=""></td>
				<td>血型</td>
				<td><input class="text" type="text" name="blood" value=""></td>
			</tr>
			<tr id="tr4" class="tr">
				<td>学历</td>
				<td><input class="text" type="text" name="education" value=""></td>
				<td>身高(cm)</td>
				<td><input class="text" type="text" name="height" value=""></td>
				<td>体重(kg)</td>
				<td><input class="text" type="text" name="weight" value=""></td>
			</tr>
			<tr id="tr5" class="tr">
				<td>出生日期</td>
				<td><input class="text" type="text" name="birthday" value=""></td>
				<td>户口性质</td>
				<td><input class="text" type="text" name="anmeldung" value=""></td>
				<td>身份证号码</td>
				<td colspan="2"><input class="text" type="text" name="idcart" value=""></td>
			</tr>
			<tr id="tr6" class="tr">
				<td>健康状况</td>
				<td><input class="text" type="text" name="health" value=""></td>
				<td>政治面貌</td>
				<td><input class="text" type="text" name="politics" value=""></td>
				<td>身份证地址</td>
				<td colspan="2"><input class="text" type="text" name="address_idcart" value=""></td>
			</tr>
			<tr id="tr7" class="tr">
				<td>联系电话</td>
				<td><input class="text" type="text" name="mobile" value=""></td>
				<td>邮箱</td>
				<td><input class="text" type="text" name="mailbox" value=""></td>
				<td>现住地址</td>
				<td colspan="2"><input class="text" type="text" name="address_now" value=""></td>
			</tr>
			<tr id="tr8" class="tr">
				<td>民族</td>
				<td><input class="text" type="text" name="nation" value=""></td>
				<td>邮编</td>
				<td><input class="text" type="text" name="zip_code" value=""></td>
				<td>特长</td>
				<td colspan="2"><input class="text" type="text" name="speciality" value=""></td>
			</tr>
	
		</table>
	</div>
</body>
</html>