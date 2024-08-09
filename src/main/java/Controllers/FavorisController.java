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

import Dao.DaoFavoris;
import Models.User;


/**
 * Servlet implementation class FavorisController
 */
@WebServlet("/FavorisController")
public class FavorisController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		((HttpServletResponse) response).addHeader("Access-Control-Allow-Origin", "*");
	     ((HttpServletResponse) response).addHeader("Access-Control-Allow-Methods","GET, OPTIONS, HEAD, PUT, POST");
	      
	        PrintWriter out = response.getWriter();
		    HttpSession ses = request.getSession();
		    User u = (User)ses.getAttribute("currentuser");
		    String path =request.getRequestURI().split("/")[2];
	        String op=request.getParameter("op");
	        System.out.println(op);
	        int idan=Integer.parseInt(request.getParameter("id"));
	        switch (op) {
	    	case "Add":
	    		System.out.println("ok");
	    		System.out.println(u.getId());

				try {
					if(DaoFavoris.Annonceexist(idan)==false) {
					Dao.DaoFavoris.AjouterAnnonce(idan, u.getId());
					}
				} catch (ClassNotFoundException | SQLException e) {
					e.printStackTrace();
				}
				
				break;
			case "Delete" :
				
				try {
					out.print(Dao.DaoFavoris.DeleteAnnonce(Integer.parseInt(request.getParameter("id"))));
				} catch (NumberFormatException | ClassNotFoundException | SQLException e) {
					e.printStackTrace();
				};
				break;
				

	}

}
	}
