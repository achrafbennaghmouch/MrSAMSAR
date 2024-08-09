package Controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;

import Models.Annonce;
import Models.User;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Adress.Adress;
import Dao.DaoAdress;
import Dao.DaoAnnonce;
import Dao.DaoFavoris;
import Dao.DaoUser;
import Models.User;
import Tools.Tools;
import enums.TypeAdress;

@WebServlet("/profil")
public class ProfiController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path =request.getRequestURI().split("/")[2];
		switch (path) {
	    case "modifier" : this.getServletContext().getRequestDispatcher("/WEB-INF/pages/Authsystem/Profil-Form-Update.jsp").include(request, response);
	    break;
	    case "profil" : this.getServletContext().getRequestDispatcher("/WEB-INF/pages/Authsystem/Profil.jsp").include(request, response);
	    break;
	   }
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 ((HttpServletResponse) response).addHeader("Access-Control-Allow-Origin", "*");
	     ((HttpServletResponse) response).addHeader("Access-Control-Allow-Methods","GET, OPTIONS, HEAD, PUT, POST");
         
	         
	            PrintWriter out = response.getWriter();
	 		    HttpSession session = request.getSession();
	 		    User u = (User)session.getAttribute("currentuser");
	 		   
	 		    String Option=request.getParameter("option");
	 		    request.setAttribute("choixopt", Option);
	 		    switch (Option) {
	 			case "mesinfo" : out.print(u.getJsonFormat()); 
	 			break;
			 	case "annonces" : 
			 		try {
			 			System.out.println(Tools.ArrayToFormatJason(u.getId()));
						out.print(Tools.ArrayToFormatJason(u.getId()));
						
					} catch (ClassNotFoundException | SQLException e) {
						e.printStackTrace();
					}
	 			break;
	 			case "modification" :
	 				 out.print(u.getJsonFormat());
	 			break;
	 			case "favoris" : 
	 				try {
						ArrayList<Annonce> annonces= DaoFavoris.getAlllists(u.getId());
						String html="[";
						for(Annonce an:annonces){
							html+=an.getJsonFormat()+",";
						}
						html = html.substring(0, html.length()-1);
					   html+="]";
						
						out.print(html);
					} catch (ClassNotFoundException | SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
		 		break;
	 			case "parametre" : out.print(Option);
		 		break;
	 			}
	 		  
			
	}

}