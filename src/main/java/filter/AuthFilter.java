package filter;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class AuthFilter implements Filter{
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException,ServletException{
		HttpServletRequest request=(HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) res;
		
		HttpSession session= request.getSession(false);
		boolean loggedIn = (session!=null && session.getAttribute("username")!=null);
		String path=request.getRequestURI();
		if (loggedIn 
			    || path.endsWith("login.jsp") 
			    || path.endsWith("login")) {
			chain.doFilter(req, res);
		}
		else {
			response.sendRedirect("login.jsp");
		}
	}
}