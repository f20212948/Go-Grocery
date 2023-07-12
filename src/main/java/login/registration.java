package login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import user.customer;

//import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class registration
 */
@WebServlet("/registration")
public class registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String url = "jdbc:mysql://localhost:3306/";
		String dbName = "oopprojuserdata";
		String driver = "com.mysql.jdbc.Driver";
		String userName = "admin";
		String dbpassword = "admin";
		try {
			String gotname=request.getParameter("name");
			String gotuname=request.getParameter("username");
			String gotpwd=request.getParameter("password");
			String gotPhone=request.getParameter("phone");
			String gotaddr=request.getParameter("address");
//			String got=request.getParameter("password");
			
			System.out.println(gotpwd);
			System.out.println(gotuname);
			
			
			
			
			
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
		
		if (!(rs.next())) {
			ps = c.prepareStatement("select id from customers");
			rs = ps.executeQuery();
			rs.last();	
			int l = rs.getRow();
			rs.first();
			long[] idArr = new long[l];
			for(int i =0;i<l;i++) {
				idArr[i]= rs.getLong("id");
				System.out.println(idArr[i]);
			}
			long id = customer.newId(l,idArr);
			customer newCust = new customer(gotname,gotuname,gotpwd,gotPhone,gotaddr,id,0);
			ps= c.prepareStatement("INSERT INTO `customers` (`Name`, `Username`, `Password`, `phone_number`, `id`, `Balance`, `Address`) VALUES (?, ?, ?, ?, ?, '0', ?);");  
			ps.setString(1,newCust.getName()); 
			ps.setString(2,newCust.getUsername()); 
			ps.setString(3,newCust.getPassword()); 
			ps.setString(4,newCust.getPhone()); 
			ps.setString(5,String.valueOf(newCust.getId()));
			ps.setString(6,newCust.getAddress()); 
			
			ps.executeUpdate();
			
			pw.println("<h1>User made!!<h1>");
			pw.println("<h3>with name : "+gotname+"</h3><br>");
			pw.println("<h3>with uname : "+gotuname+"</h3><br>");
			pw.println("<h3>with password : "+gotpwd+"</h3><br>");
			pw.println("<h3>with id : "+String.valueOf(newCust.getId())+"</h3><br>");
			pw.println("<h3>with address : "+newCust.getAddress()+"</h3><br>");
			pw.println("<h3>with phone : "+String.valueOf(newCust.getPhone())+"</h3><br>");
			pw.println("<h3>with money : "+String.valueOf(newCust.getMoney())+"</h3><br>");
			
			RequestDispatcher rd=request.getRequestDispatcher("registration.jsp");  
	        rd.include(request,response);
			
		}
		else {
			
			pw.println("<br><br>username got: "+gotuname);
			pw.println("password got: "+gotpwd);
			pw.print("Sorry username or password error");  
	        RequestDispatcher rd=request.getRequestDispatcher("registration.jsp");  
	        rd.include(request,response);
		}
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
