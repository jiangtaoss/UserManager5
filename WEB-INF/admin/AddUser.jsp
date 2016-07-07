<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'AddUser.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" src="./js/js3.js"></script>
  </head>
  
  <body>
   <h1>增加用户1</h1>
		<form action='/UserManager5/UserClServlet?type=add' method='post'>
		<table border=1px bordercolor=blue width=500px>
		<tr><td>用户名</td><td><input type='text' name='username' id="username"/></td></tr>
		<tr><td>email</td><td><input type='text' name='email' id="email"/></td></tr>
		<tr><td>等级</td><td><input type='text' name='grade' id="grade"/></td></tr>
		<tr><td>密码</td><td><input type='text' name='passwd' id="passwd"/></td></tr>
		<tr><td><input type='submit' onclick="return checkNum()" value='确认添加'/></td><td><input type='reset' value='重新填写'/></td></tr>
		</table>
		</form>
  </body>
</html>
