package model;
import java.sql.*;
import java.util.*;


public class StudentDAO{
	private Connection getConnection() throws Exception {
		Class.forName("com.mysql.cj.jdbc.Driver");
		return DriverManager.getConnection("jdbc:mysql://localhost:3306/StudentPortal","root","simran1658");
	}
	
	public List<String[]> getAllStudents(){
		List<String[]> arr=new ArrayList<>();
		try {
			Connection con=getConnection();
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("SELECT * FROM STUDENTS");
			while(rs.next()) {
				arr.add(new String[]{rs.getString("name"),rs.getString("email"),rs.getString("course")});
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return arr;
	}
	
	public void addStudents(String name, String email, String course) {
	    try {
	        Connection con = getConnection();
	        
	        PreparedStatement ps = con.prepareStatement(
	            "INSERT INTO STUDENTS(name, email, course) VALUES(?,?,?)"
	        );

	        ps.setString(1, name);
	        ps.setString(2, email);
	        ps.setString(3, course);

	        ps.executeUpdate();
	        con.close();
	    } 
	    catch (Exception e) {
	        e.printStackTrace();
	    }
	}

	
}
