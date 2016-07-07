//跳转
function gotoPageNow() {
	var pageNow=document.getElementById('pageNow');
	window.open('/UserManager5/GotoManage?pageNow='+pageNow.value,'_self');
}
//确认操作
function confirmOper() {
	return window.confirm('确认要删除这个用户吗？');
}
//验证pageNow
function checkNum() {
	var pageNow = document.getElementById("pageNow").value;
	if(pageNow=="") {
		window.alert("请输入您要跳转的页码");
		return false;
	}
	//正则表达式，验证是否为非数字提交
	var reg = /^[1-9]\d*(\.[0-9]+)?$|^0$/i;
	if(!reg.test(pageNow)) {
		window.alert("页码必须为整数且不为空");
		return false;
	}
	//不知道为什么text不能用两次，解决办法是在将正则表达式赋给reg 
	//原因： 将正则表达式的g去掉就好了
	 //reg = /^[1-9]\d*(\.[0-9]+)?$|0$/gi;
	
}
