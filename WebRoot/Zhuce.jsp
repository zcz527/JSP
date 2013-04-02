<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>网上书店--注册</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<script type="text/javascript">
	function Check()
	{
	if(document.form.name.value==""||document.form.pwd.value=="")
	{
	window.alert("用户名或密码不能为空!");
	return false;
	}
	if(document.form.pwd.value!=document.form.repwd.value)
	{
	window.alert("两次密码不同!");
	return false;
	}
	return true;
	}
	</script>

  </head>
  
  <body>
   <center>
   <h3>用户注册</h3>
    <form action="UserBean" name="form" method="post" onSubmit="return Check();">
    <table>
         <tr><td>用户名：</td>
         <td><input type="text" name="name" style="width:120"></td>
         </tr>
         <tr><td>密&nbsp;&nbsp;码：</td><td><input type="password" name="pwd" style="width:120"></td></tr> 
         <tr><td>确认密码：</td><td><input type="password" name="repwd" style="width:120"></td></tr>
         <tr><td>性&nbsp;&nbsp;别：</td><td><input type="radio" name="sex" value="男">男&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <input type="radio" name="sex" value="女">女</td></tr>
         <tr><td>学&nbsp;&nbsp;历：</td><td><select name="xli" style="width:120;font-size:20">
         <option value="小学">小学</option>
         <option value="初中">初中</option>
         <option value="高中">高中</option>
         <option value="大学">大学</option>
         </select></td></tr>
         </table><br/>
         <input type="submit" name="submit" value="注册" style="width:80;height:35;font-size:20">&nbsp;&nbsp;&nbsp;
         <input type="reset" name="reset" value="重置" style="width:80;height:35;font-size:20">
    </form>
    <a href="Login.jsp">返回登陆界面</a>
   </center>
  </body>
</html>
