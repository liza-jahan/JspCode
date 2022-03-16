package taining;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class Test1
 */
public class Test1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Test1() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=ISO-8859-1");
	     PrintWriter out=response.getWriter();
	     try {
//	    	out.print("<html>");
//	    	 out.print("<head>");
//	    	 out.print("<titel>Insert title here</title>");
//	    	 out.print("</head>");
//	    	 out.print("<body>");
	    	 out.print("<h1>Servlet Test at"+ request.getContextPath()  +"</h1>");
//	    	 out.print("</body>");
//	    	 out.print("</html>");
//	      
	    	 
	     }
	     finally{
	    	 out.close();
	    	 
	     }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
