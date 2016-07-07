<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>用户管理系统登录</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" src="./js/js1.js"></script>
</head>

<body bgcolor='grey'/>
<hr />
<h1 align="center">用户登录</h1>
<form action='/UserManager5/LoginClServlet' method='post'>
	<%
		Cookie[] cookies = request.getCookies();

		String userId = "";
		String password = "";

		if (cookies != null) {

			for (Cookie cookie : cookies) {
				if ("userId".equals(cookie.getName())) {
					userId = cookie.getValue();
				}
				if ("password".equals(cookie.getName())) {
					password = cookie.getValue();
				}
			}
	%>
	用户id:<input type='text' name='id' id="num1" value="<%=userId%>" /></br> 
	密 码:<input type='password' name='password' id="num2" value="<%=password%>" /></br>
	验证码:<input type='text' name='checkcode' id="num3" /><image src='/UserManager5/CreateCode'><br />
	记住密码<input type='checkbox' name='cookie' value='y' /> <br />
	<input type='submit' onclick="return checkNum()" value='登录' />
	</br>
	<%
		String errInfo = (String) request.getAttribute("err");
			if (errInfo != null) {
				out.println("<font color='red'>" + errInfo + "</font><br/>");
			}
	%>
	<hr />
</form>
<%
	} else {
%>
<form action='/UserManager5/LoginClServlet' method='post'>
	用户id:<input type='text' name='id' id="num1" /></br> 
	密 码:<input type='password' name='password' id="num2"/></br> 
	验证码:<input type='text' name='checkcode' id="num3"/><image src='/UserManager5/CreateCode'><br />
	记住密码<input type='checkbox' name='cookie' value='y' /> <br />
	<input type='submit' onclick="return checkNum()" value='登录' />
	</br>
	<%
		String errInfo = (String) request.getAttribute("err");
			if (errInfo != null) {
				out.println("<font color='red'>" + errInfo + "</font><br/>");
			}
	%>


	<hr />
</form>
<%
	}
%>

</body>
</html>
