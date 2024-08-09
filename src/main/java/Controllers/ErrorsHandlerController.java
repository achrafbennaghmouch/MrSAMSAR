package Controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ErrorsHandlerController
 */
@WebServlet({"/404","/500","/505"})
public class ErrorsHandlerController extends HttpServlet {
	
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path =request.getRequestURI().split("/")[2];
		switch (path) {
		case "404" : this.getServletContext().getRequestDispatcher("/WEB-INF/pages/Error/404.jsp").include(request, response);
		break;
		case "500" : this.getServletContext().getRequestDispatcher("/WEB-INF/pages/Error/500.jsp").include(request, response);
		break;
		case "505" : this.getServletContext().getRequestDispatcher("/WEB-INF/pages/Error/505.jsp").include(request, response);
		break;
		
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}