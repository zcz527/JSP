package cn.sdut;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.UserBean;

public class UserServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
     try
     {
      Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
     }
     catch(Exception e)
     {
     }
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		UserBean user=new UserBean();
		request.setCharacterEncoding("gb2312");
		String name=request.getParameter("name");
	     String pwd=request.getParameter("pwd");
	     String sex=request.getParameter("sex");
	     String xli=request.getParameter("xli");
	     Date date=new Date();
	     java.sql.Date date1=new java.sql.Date(date.getTime());
	     String information="";
	     try
	     {
	    	 Connection con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;DatabaseName=BookStore","zcz","123");
	    	 String insertsql="insert into UserInfo values(?,?,?,?,?)";
	    	 PreparedStatement pst=con.prepareStatement(insertsql);
	    	 pst.setString(1,name);
	    	 pst.setString(2,pwd);
	    	 pst.setString(3,sex);
	    	 pst.setString(4,xli);
	    	  pst.setDate(5,date1);
	    	  int count=0;
	    	 	if(CheckName(name,pwd))
	    	 	{
	    	 		//information="用户名已存在,请重新注册!";
	    	 	request.getRequestDispatcher("/Zhuce.jsp").forward(request, response);
	    	 	}
	    	 	else{
	    	 		count=pst.executeUpdate();
	    	 if(count>0)
	    	 {
	    		 information="注册成功!";
	    		 user.setInformation(information);
	    		 user.setName(name);
	    		 user.setPwd(pwd);
	    		 user.setSex(sex);
	    		 user.setXli(xli);
	    		 user.setRegistertime(date1);
	    	 }
	    	 else
	    	 {
	    		 information="信息填写不完整!";
	    		 user.setInformation(information);
	    	 }
	    	 con.close();
	         request.setAttribute("user", user);
	         request.getRequestDispatcher("/Show.jsp").forward(request, response);
	    	 	}
	     }
	     catch(Exception e)
	     {
	     }
	
		
		
	}
	public boolean CheckName(String name1,String pwd1)
	{
		boolean flag=false;
		try {
			Connection con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;DatabaseName=BookStore","zcz","123");
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery("select * from UserInfo where UName='"+name1+"' and UPwd='"+pwd1+"'");
			if(rs.next())
			{
				flag=true;
			}
			stmt.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return flag;
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
 doPost(request,response);
}

}
