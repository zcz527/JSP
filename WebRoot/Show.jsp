<%@ page language="java" import="java.util.*,cn.sdut.*,entity.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<jsp:useBean id="user" class="entity.UserBean" scope="request"/>
<jsp:setProperty name="user" property="*" />
  <head>
    <base href="<%=basePath%>">
    
    <title>��ʾ��Ϣ</title>
    
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
     <center>
     <jsp:getProperty name="user" property="information"/><br>
     �û�����<jsp:getProperty name="user" property="name"/><br>
    ���룺<jsp:getProperty name="user" property="pwd"/><br>
    �Ա�<jsp:getProperty name="user" property="sex"/><br>
    ѧ����<jsp:getProperty name="user" property="xli"/><br>
      ע��ʱ�䣺<jsp:getProperty name="user" property="registertime"/>
     </center>
  </body>
</html>
