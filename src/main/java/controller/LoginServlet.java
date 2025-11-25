package controller;
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;


public class LoginServlet extends HttpServlet{
	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException, ServletException{
		String username=req.getParameter("username");
		String password=req.getParameter("password");
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/StudentPortal","root","simran1658");
			PreparedStatement st=con.prepareStatement("SELECT * FROM USERS WHERE USERNAME=? AND PASSWORD=?");
			st.setString(1, username);
			st.setString(2, password);
			
			ResultSet rs=st.executeQuery();
			
			if(rs.next()) {
				HttpSession session=req.getSession();
				session.setAttribute("username", username);
				session.setAttribute("password", password);
				res.sendRedirect("dashboard.jsp");
			}
			else {
				res.sendRedirect("login.jsp?error=1");
			}
			con.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	}
}