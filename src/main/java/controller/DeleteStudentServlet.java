package controller;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import model.StudentDAO;

public class DeleteStudentServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        int id = Integer.parseInt(req.getParameter("id"));

        StudentDAO dao = new StudentDAO();
        boolean deleted = dao.deleteStudent(id);

        if(deleted)
            resp.sendRedirect("deleteStudent.jsp?msg=Deleted Successfully!");
        else
            resp.sendRedirect("deleteStudent.jsp?msg=Student Not Found!");
    }
}
