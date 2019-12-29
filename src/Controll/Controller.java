package Controll;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Controller")
public class Controller extends HttpServlet {	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");  
	    PrintWriter out = response.getWriter();
		String username=request.getParameter("username");  
		String password=request.getParameter("password");          
		if(username.isEmpty() || password.isEmpty()) {
			RequestDispatcher req = request.getRequestDispatcher("login.jsp");
			req.include(request, response);
		}
		else if(getParameter("username").toString().equals("admin") && request.getParameter("password").toString().equals("admin123")) {
			response.sendRedirect("NewFile1.html");
		}
			else{
				
				//out.println("Data is successfully inserted!");
				response.sendRedirect("login.jsp");
				out.println("unsucessfll run");

				}

}

	private Object getParameter(String string) {
		// TODO Auto-generated method stub
		return null;
	}
}
