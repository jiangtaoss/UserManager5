function checkNum() {
	var username = document.getElementById("username").value;
	var email = document.getElementById("email").value;
	var grade = document.getElementById("grade").value;
	var passwd = document.getElementById("passwd").value;
	if(username=="") {
		window.alert("请输入用户名");
		return false;
	}
	if(email=="") {
		window.alert("请输入电子邮件");
		return false;
	}
	if(grade=="") {
		window.alert("请输入用户等级");
		return false;
	}
	if(passwd=="") {
		window.alert("请输入密码");
		return false;
	}
	//正则表达式，验证是否为非数字提交
	var reg = /^[1-9]\d*(\.[0-9]+)?$|^0$/i;
	if(!reg.test(grade)) {
		window.alert("等级必须为整数");
		return false;
	}
	//不知道为什么text不能用两次，解决办法是在将正则表达式赋给reg 
	//原因： 将正则表达式的g去掉就好了
	 //reg = /^[1-9]\d*(\.[0-9]+)?$|0$/gi;
	
}