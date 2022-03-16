package logIn;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class LogIn extends HttpServlet {
	private static final long serialVersionUID = 1L;

   
    public LogIn() {
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
		response.setContentType("text/html; charset=ISO-8859-1");
		PrintWriter s1=response.getWriter();
		s1.print("<html>");
		s1.print("<head>");
		s1.print("<title>Log In</title> ");
		s1.print("</head>");
		s1.print("<body>");
		s1.print("<h1> User name" + request.getParameter("name") +"</h1>");
		s1.print("</body>");
		s1.print("</html>");
		
		
		
		
	}

}
