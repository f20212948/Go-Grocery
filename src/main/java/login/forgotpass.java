package login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;

//import user.customer;

/**
 * Servlet implementation class forgotpass
 */
@WebServlet("/forgotpass")
public class forgotpass extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "jdbc:mysql://localhost:3306/";
		String dbName = "oopprojuserdata";
		String driver = "com.mysql.jdbc.Driver";
		String userName = "admin";
		String dbpassword = "admin";
		try {
			
			String NpassEnter= request.getParameter("Npassenter");
			String NpassReEnter= request.getParameter("NpassReEnter");
			String uname = request.getParameter("username");
			long id = Long.parseLong( request.getParameter("id"));

		// loading driver
		Class.forName(driver);
		// Connection set up with database named as user
		Connection c = DriverManager.getConnection(url+dbName,userName,dbpassword);
		// Creating statement for the connection to use sql queries
//		Statement st = c.createStatement();
//		// Executing sql query using the created statement over the table user_details located in the database pointing by the dsn
//		ResultSet rs = st.executeQuery("SELECT * from test");
//		// Accessing the result of query execution
		
		PreparedStatement ps= c.prepareStatement(  "select * from customers where username=? and id=?");
		ps.setString(1,uname);  
		ps.setLong(2,id);  
				      
		ResultSet rs=ps.executeQuery();
		if(rs.next()) {
			if (NpassEnter.equals(NpassReEnter)) {
				ps = c.prepareStatement("UPDATE customers SET Password = ? WHERE username=? and id=?");
				ps.setString(1, NpassReEnter);
				ps.setString(2,uname);  
				ps.setLong(3,id);  
				ps.execute();
			}
			else {
				System.out.println("yeh kaise1");
			}	

		
//			session.setAttribute("loggedInCustomer", cust);
			
			RequestDispatcher rd=request.getRequestDispatcher("index.html");
			rd.forward(request, response);
			
		}
		else {
			PrintWriter pw = response.getWriter();
			pw.println(uname);
			pw.println(id);
			pw.println(NpassEnter);
			pw.println(NpassReEnter);
			System.out.println("yeh kaise2");
		}
		}
		
		
		catch (Exception e) {
			System.out.println(e);
		}

	}

}
