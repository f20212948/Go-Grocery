package user;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class wallet
 */
@WebServlet("/wallet")
public class wallet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		String url = "jdbc:mysql://localhost:3306/";
		String dbName = "oopprojuserdata";
		String driver = "com.mysql.jdbc.Driver";
		String userName = "admin";
		String dbpassword = "admin";
		try {
			
			String pass= request.getParameter("password");
			int addAmount = Integer.parseInt(request.getParameter("addMoney"));
			HttpSession session = request.getSession(); 
			customer cust = (customer)session.getAttribute("loggedInCustomer");
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
		ps.setString(1,cust.getUsername());  
		ps.setString(2,pass);  
				      
		ResultSet rs=ps.executeQuery();
		if(rs.next()) {
			cust.addMoney(addAmount);
			ps = c.prepareStatement("UPDATE customers SET Balance = ? WHERE username=? and password=?");
			ps.setInt(1, (cust.getMoney()));
			ps.setString(2,cust.getUsername());  
			ps.setString(3,pass);  

			ps.execute();
			session.setAttribute("loggedInCustomer", cust);
			
			RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
			
		}
		}
		
		
		catch (Exception e) {
			System.out.println(e);
		}
	}

}
