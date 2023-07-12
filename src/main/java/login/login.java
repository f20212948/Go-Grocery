package login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;

import user.customer;
/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String url = "jdbc:mysql://localhost:3306/";
		String dbName = "oopprojuserdata";
		String driver = "com.mysql.jdbc.Driver";
		String userName = "admin";
		String dbpassword = "admin";
		try {
			
			String gotuname=request.getParameter("username");
			String gotpwd=request.getParameter("password");
		// loading driver
		Class.forName(driver);
		// Connection set up with database named as user
		Connection c = DriverManager.getConnection(url+dbName,userName,dbpassword);
		// Creating statement for the connection to use sql queries
//		Statement st = c.createStatement();
//		// Executing sql query using the created statement over the table user_details located in the database pointing by the dsn
//		ResultSet rs = st.executeQuery("SELECT * from test");
//		// Accessing the result of query execution
		
		PreparedStatement ps= c.prepareStatement(  "select * from customers where username=? and password=?");  
		ps.setString(1,gotuname);  
		ps.setString(2,gotpwd);  
				      
		ResultSet rs=ps.executeQuery();  
		
		response.setContentType("text/html");//setting the content type
		PrintWriter pw=response.getWriter();//get the stream to write the data  
		pw.println("<html><body>"); 
		
		if (rs.next()) {
			pw.println("<h1>LOGGED IN<h1>");
			rs.first();
			customer loggedInCustomer = new customer(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(7),rs.getLong(5),rs.getInt(6));
			
			
			pw.println("<h3>with uname : "+gotuname+"</h3><br>");
			pw.println("<h3>with password : "+gotpwd+"</h3><br>");
			HttpSession session = request.getSession();
			
			session.setAttribute("loggedInCustomer", loggedInCustomer);
			
			RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
			System.out.println(loggedInCustomer.getName());
			System.out.println(loggedInCustomer.getPassword());
			System.out.println(loggedInCustomer.getAddress());
			System.out.println(loggedInCustomer.getUsername());
			System.out.println(loggedInCustomer.getMoney());
			
			
		}
		else {
			pw.println("<br><br>username got: "+gotuname);
			pw.println("password got: "+gotpwd);
			pw.print("Sorry username or password error");  
	        RequestDispatcher rd=request.getRequestDispatcher("login.jsp");  
	        rd.include(request,response);
		}
		pw.print("hi bro");
		pw.println("</body></html>");  
		pw.close();
		  
		
//		boolean flag = false;
//		while(rs.next())
//		{
//		String username = rs.getString(2);
//		String password = rs.getString(3);
////		int phone = Integer.parseInt(rs.getString(2));
////		int age = Integer.parseInt(rs.getString(3));
////		String address = rs.getString(4);
//		if (username.equals(gotuname) && password.equals(gotpwd)) {
//			flag = true;
//			
//		}
//		  
//		}
		// Closing the statement and connection
//		st.close();
		c.close();
		}
		catch (Exception e) {
			System.out.println(e);
		}
		
		
	}
	
}


