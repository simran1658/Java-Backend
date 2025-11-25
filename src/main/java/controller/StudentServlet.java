package controller;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import model.StudentDAO;


public class StudentServlet extends HttpServlet{
	protected void doPost(HttpServletRequest req, HttpServletResponse res)throws  IOException, ServletException {
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		String course=req.getParameter("course");
		
		new StudentDAO().addStudents(name,email,course);
		res.sendRedirect("students.jsp");
	}
}