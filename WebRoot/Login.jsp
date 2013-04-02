<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>山理网上书店--登录</title>
    
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
	return true;
	}
	</script>
	
  </head>
  
  <body>
   <center>
    <font size="10" color="blue">山理网上书店</font><br><br>
   <form action="Login" name="form" method="post" onSubmit="return Check();">
    <table>
    <tr align="center">
    <td colspan="2" style="color:fuchsia;font-size:30" height=50><b>用户登录</b></td>
    </tr>
    <tr style="color:red">
    <td>用户名：</td>
    <td><input type="text" name="name" style="width:120"></td>
    </tr>
    <tr style="color:red"><td>密&nbsp;&nbsp;码：</td><td><input type="password" name="pwd" style="width:120"></td>
    </tr>
    </table><br/>
    <center>
    <input type="submit" name="submit" value="登录" style="color:red;width:80;height:35;font-size:20">
    </center><br/><br/>
          如果您还没有帐户,请点此前往<a href="Zhuce.jsp">注册>>>></a>
   </form>
   </center>
  </body>
</html>
