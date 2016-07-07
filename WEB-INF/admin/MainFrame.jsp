<%@ page language="java" import="java.util.*,com.jiangtao.domain.*,LoginTimeServlet.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MainFrame.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" >
	function confirmOper() {
	return window.confirm('确认要退出吗？');
}
</script>
  </head>
  
  <body bgcolor="grey" img src='imgs/cloud.jpg' >
  <% 
  		session = request.getSession();
		User loginUser = (User) session.getAttribute("loginUser");
		if(loginUser == null) {
			request.setAttribute("err", "请输入账户名密码登录");
			request.getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
			return;
		}
		LoginTimeCookie lastTime = new LoginTimeCookie();
		String nums = (String)this.getServletContext().getAttribute("nums");
		%>
		<h1>主界面</h1>
		<% 
		lastTime.doGet(request, response);
		%>
		<h3>欢迎<%=loginUser.getId() %>号用户<%=loginUser.getUsername() %>登录，请选择你要进行的操作</h3>
		
		<br/><a href='/UserManager5/GotoManage'>管理用户</a><br/>
		<a href='/UserManager5/UserClServlet?type=gotoAddUserView'>添加用户</a><br/>
		<a href='/UserManager5/UserClServlet?type=gotoSearchUserView'>查找用户</a><br/>
		<a onClick='return confirmOper();'href='/UserManager5/index.jsp'>退出系统</a><br/>
		<h3>该网站被访问了<%=nums %>次</h3>
		
  </body>
</html>
