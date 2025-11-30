package controller;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import model.StudentDAO;

public class SearchStudentServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        int id = Integer.parseInt(req.getParameter("id"));
        StudentDAO dao = new StudentDAO();
        String[] st = dao.searchById(id);

        if (st != null) {
            resp.sendRedirect("searchStudent.jsp?idval=" + st[0] +
                    "&name=" + st[1] +
                    "&email=" + st[2] +
                    "&course=" + st[3]);
        } else {
            resp.sendRedirect("searchStudent.jsp?msg=Student Not Found!");
        }
    }
}
