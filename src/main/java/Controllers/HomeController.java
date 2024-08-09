package Controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Adress.Adress;
import enums.TypeAnnonce;

/**
 * Servlet implementation class HomeController
 */
@WebServlet({"/Home","/HomeC","/aboutus","/contact","/details"})
public class HomeController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String path =request.getRequestURI().split("/")[2];
		switch (path) {
		case "Home" :this.getServletContext().getRequestDispatcher("/WEB-INF/pages/Authsystem/Home.jsp").include(request, response);
		break;
		case "HomeC" : this.getServletContext().getRequestDispatcher("/WEB-INF/pages/Authsystem/HomeC.jsp").include(request, response);
		break;
		case "aboutus" : this.getServletContext().getRequestDispatcher("/WEB-INF/pages/Authsystem/Aboutus.jsp").include(request, response);
		break;
		case "contact" : this.getServletContext().getRequestDispatcher("/WEB-INF/pages/Authsystem/Contact.jsp").include(request, response);
		break;
		case "details" : this.getServletContext().getRequestDispatcher("/WEB-INF/pages/Authsystem/DetailAnn.jsp").include(request, response);
		break;
		
		
	}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		((HttpServletResponse) response).addHeader("Access-Control-Allow-Origin", "*");
	     ((HttpServletResponse) response).addHeader("Access-Control-Allow-Methods","GET, OPTIONS, HEAD, PUT, POST");
 	
	    
	}

}
