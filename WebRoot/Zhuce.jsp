<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>�������--ע��</title>
    
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
	window.alert("�û��������벻��Ϊ��!");
	return false;
	}
	if(document.form.pwd.value!=document.form.repwd.value)
	{
	window.alert("�������벻ͬ!");
	return false;
	}
	return true;
	}
	</script>

  </head>
  
  <body>
   <center>
   <h3>�û�ע��</h3>
    <form action="UserBean" name="form" method="post" onSubmit="return Check();">
    <table>
         <tr><td>�û�����</td>
         <td><input type="text" name="name" style="width:120"></td>
         </tr>
         <tr><td>��&nbsp;&nbsp;�룺</td><td><input type="password" name="pwd" style="width:120"></td></tr> 
         <tr><td>ȷ�����룺</td><td><input type="password" name="repwd" style="width:120"></td></tr>
         <tr><td>��&nbsp;&nbsp;��</td><td><input type="radio" name="sex" value="��">��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <input type="radio" name="sex" value="Ů">Ů</td></tr>
         <tr><td>ѧ&nbsp;&nbsp;����</td><td><select name="xli" style="width:120;font-size:20">
         <option value="Сѧ">Сѧ</option>
         <option value="����">����</option>
         <option value="����">����</option>
         <option value="��ѧ">��ѧ</option>
         </select></td></tr>
         </table><br/>
         <input type="submit" name="submit" value="ע��" style="width:80;height:35;font-size:20">&nbsp;&nbsp;&nbsp;
         <input type="reset" name="reset" value="����" style="width:80;height:35;font-size:20">
    </form>
    <a href="Login.jsp">���ص�½����</a>
   </center>
  </body>
</html>
