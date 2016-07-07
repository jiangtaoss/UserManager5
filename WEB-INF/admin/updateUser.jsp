<%@ page language="java" import="java.util.*,com.jiangtao.domain.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'updateUser.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <%
  	User user = (User)request.getAttribute("userInfo");
   %>
    <h1>更改用户信息</h1>
		<form action='/UserManager5/UserClServlet?type=update' method='post'>
		<table border=1px bordercolor=blue width=500px>
		<tr><td><input type="hidden" name="id" value="<%=user.getId() %>" /></td></tr>
		<tr><td>用户名</td><td><input type='text' name='username' value="<%=user.getUsername() %>>"/></td></tr>
		<tr><td>email</td><td><input type='text' name='email' value="<%=user.getEmail() %>"/></td></tr>
		<tr><td>等级</td><td><input type='text' name='grade' value="<%=user.getGrade() %>"/></td></tr>
		<tr><td>密码</td><td><input type='text' name='passwd' value="<%=user.getPassword() %>"/></td></tr>
		<tr><td><input type='submit' value='确认修改'/></td><td><input type='reset' value='重新填写'/></td></tr>
		</table>
		</form>
  </body>
</html>
