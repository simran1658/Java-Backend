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
	
	public String[] searchById(int id) {
	    String[] student = null;

	    try {
	        Connection con = getConnection();

	        // NO SPACE BEFORE SELECT
	        PreparedStatement ps = con.prepareStatement(
	            "SELECT id, name, email, course FROM students WHERE id = ?"
	        );
	        ps.setInt(1, id);

	        ResultSet rs = ps.executeQuery();

	        if (rs.next()) {
	            student = new String[]{
	                rs.getString("id"),
	                rs.getString("name"),
	                rs.getString("email"),
	                rs.getString("course")
	            };
	        }

	        con.close();
	    } catch(Exception e) {
	        e.printStackTrace();
	    }

	    return student;
	}

	
	
	public boolean updateDetails(int id, String name, String email, String course) {
		boolean update=false;
		try {
			Connection con=getConnection();
			
			
			PreparedStatement ps=con.prepareStatement("UPDATE STUDENTS SET NAME=(?), EMAIL=(?), COURSE=(?) WHERE ID=(?)");	
			ps.setString(1,name);
			ps.setString(2, email);
			ps.setString(3, course);
			ps.setInt(4, id);
			
			update=ps.executeUpdate()>0;
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return update;
		
	}
	
	
	public boolean deleteStudent(int id) {
		boolean delete=false;
		try {
			Connection con=getConnection();
			
			PreparedStatement ps=con.prepareStatement("DELETE FROM STUDENTS WHERE id=(?)");
			ps.setInt(1, id);
			
			delete=ps.executeUpdate()>0;
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return delete;
	}

	
}
