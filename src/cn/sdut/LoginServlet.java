package cn.sdut;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.UserBean;

public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	public void init() throws ServletException {
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
             String information="";
             if(CheckName(name,pwd))
             {
            	 information="µÇÂ¼³É¹¦!";
            	 user.setInformation(information);
            	 request.setAttribute("user", user);
     		    request.getRequestDispatcher("/ShowLoginmess.jsp").forward(request, response);
             }
             else
             {
            request.getRequestDispatcher("/Login.jsp").forward(request, response);
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
doPost(request, response);

}
}
