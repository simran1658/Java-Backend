package controller;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import model.StudentDAO;

public class UpdateStudentServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String course = req.getParameter("course");

        StudentDAO dao = new StudentDAO();
        boolean updated = dao.updateDetails(id, name, email, course);

        if(updated)
            resp.sendRedirect("updateStudent.jsp?msg=Updated Successfully!");
        else
            resp.sendRedirect("updateStudent.jsp?msg=Student Not Found!");
    }
}
