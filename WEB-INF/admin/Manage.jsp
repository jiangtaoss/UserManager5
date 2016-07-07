<%@page import="com.jiangtao.domain.User"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>管理界面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="./js/js2.js"></script>
	</head>
  
  <body>
   <%
   		ArrayList<User> al = (ArrayList<User>)request.getAttribute("al");
   		String S_pageNow = (String)request.getAttribute("pageNow");
   		String S_pageCount = (String)request.getAttribute("pageCount");
   		int pageNow = Integer.parseInt(S_pageNow);
   		int pageCount = Integer.parseInt(S_pageCount);
    %>
    <img src='imgs/timg.jpg'/><hr/>	
	<h1>管理用户</h1><a href='/UserManager5/LoginClServlet?type=return'>返回主界面</a>
	<a href='/UserManager5/index.jsp'>退出</a>
	
	<table border=1px bordercolor=blue width=500px>
	<tr><th>用户id</th><th>用户名</th><th>email</th><th>用户等级</th><th>删除用户</th><th>修改用户</th></tr>
	<%
	for(User user:al) { 
	%>
		<tr><td><%=user.getId()%></td><td><%=user.getUsername() %></td><td><%=user.getEmail() %></td><td><%=user.getGrade() %></td>
		<td><a onclick='return confirmOper();' href='/UserManager5/UserClServlet?type=delete&id=<%=user.getId() %>'>删除用户</a></td>
		<td><a href='/UserManager5/UserClServlet?type=gotoUpdateView&id=<%=user.getId() %>'>修改用户</a></td></tr>
	<% 
	}
	%>
	</table>
	<% 
	if(pageNow == 1) {
	%>
		<a href='/UserManager5/GotoManage?pageNow=<%=pageNow %>'><上一页></a>
	<% 
	} else {
	%>	<a href='/UserManager5/GotoManage?pageNow=<%=pageNow-1 %>'><上一页></a>
	<%
	 }
			
	for(int i=1; i<=pageCount;i++) {
	%>
		<a href='/UserManager5/GotoManage?pageNow=<%=i %>'><<%=i %>></a>
	<% 
	}
	if(pageNow == pageCount) {
	%>
		<a href='/UserManager5/GotoManage?pageNow=<%=pageCount %>'><下一页></a>
	<% 
	} else {
	%>
		<a href='/UserManager5/GotoManage?pageNow=<%=pageNow+1 %>'><下一页></a>
	<%
	}
	%>
	当前页/总共页<<%=pageNow %>/<%=pageCount %>>
	<br/>跳转:<input type='text' id="pageNow" name='pageNow'/> 
	<!-- 在一个按钮上绑定两个事件 onclick="gotoPageNow();return checkNum()"-->
				<input type='button' onclick="gotoPageNow();return checkNum()" value='GO'/>
  </body>
</html>
