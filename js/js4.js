function checkNum() {
	var userId = document.getElementById("userId").value;
	
	if(userId=="") {
		window.alert("请输入用户id");
		return false;
	}
	
	//正则表达式，验证是否为非数字提交
	var reg = /^[1-9]\d*(\.[0-9]+)?$|^0$/i;
	if(!reg.test(userId)) {
		window.alert("用户id必须为整数");
		return false;
	}
	//不知道为什么text不能用两次，解决办法是在将正则表达式赋给reg 
	//原因： 将正则表达式的g去掉就好了
	 //reg = /^[1-9]\d*(\.[0-9]+)?$|0$/gi;
	
}