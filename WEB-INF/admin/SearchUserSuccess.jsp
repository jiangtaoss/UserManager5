<%@ page language="java" import="java.util.*,com.jiangtao.service.*,com.jiangtao.domain.*" pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'SearchUserSuccess.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  <script type="text/javascript" src="js/js1.js"></script>
  </head>
  
  <body>
   <%
   UserService userService = new UserService();
	session = request.getSession();
	User user = (User) session.getAttribute("userInfo1");
    %>
    <h1>您所查找的用户1</h1> <a href='/UserManager5/LoginClServlet?type=return'>返回主界面</a>
		<table border=1px bordercolor=blue width=500px>
		<tr><th>用户id</th><th>用户名</th><th>email</th><th>用户等级</th><th>删除用户</th><th>修改用户</th></tr>
		<tr><td><%=user.getId() %></td><td><%=user.getUsername() %></td><td><%=user.getEmail() %></td><td><%=user.getGrade() %></td>
		<td><a onClick="return confirmOper()" href='/UserManager5/UserClServlet?type=delete&id=<%=user.getId()%>'>删除用户</a></td>
		<td><a href='/UserManager5/UserClServlet?type=gotoUpdateView&id=<%=user.getId()%>'>修改用户</a></td></tr>
		</table>
  </body>
</html>
