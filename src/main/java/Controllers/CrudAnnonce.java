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
import Dao.DaoAdress;
import Dao.DaoAnnonce;
import Dao.DaoUser;
import Models.Annonce;
import Models.User;
import enums.TypeAdress;
import enums.TypeAnnonce;


@WebServlet({"/modifier","/ajouter","/detail"})
public class CrudAnnonce extends HttpServlet {

    

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path =request.getRequestURI().split("/")[2];
		//out.print(path);
		switch (path) {
	    case "modifier" : this.getServletContext().getRequestDispatcher("/WEB-INF/pages/Authsystem/Profil-Form-Update.jsp").include(request, response);
	    break;
	    case "ajouter" : this.getServletContext().getRequestDispatcher("/WEB-INF/pages/Authsystem/Profil-Form-Add.jsp").include(request, response);
		break;
	    case "detail" : this.getServletContext().getRequestDispatcher("/WEB-INF/pages/Authsystem/DetailAnn.jsp").include(request, response);
		break;
	   }
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 ((HttpServletResponse) response).addHeader("Access-Control-Allow-Origin", "*");
	     ((HttpServletResponse) response).addHeader("Access-Control-Allow-Methods","GET, OPTIONS, HEAD, PUT, POST");
	     
	        PrintWriter out = response.getWriter();
		    HttpSession ses = request.getSession();
		    User u = (User)ses.getAttribute("currentuser");   
	        String op=request.getParameter("op");

	
	        switch (op) {
 			case "delete" : 
 				Boolean y;
				try {	        int idAnn=Integer.parseInt(request.getParameter("id"));
					y = DaoAnnonce.supprimerAnnonce(idAnn);
					if(y) {
						out.print("true");
					}else {out.print("false");}
				} catch (ClassNotFoundException | SQLException e) {
					e.printStackTrace();
				}
				
 			break;
		 	case "modifier" : 
						try {
					        int idAnn=Integer.parseInt(request.getParameter("id"));
							HttpSession masession = request.getSession();
							Annonce ann=DaoAnnonce.getAnnonceById(idAnn);
							masession.setAttribute("Annoncee",ann);
						} catch (ClassNotFoundException | SQLException e) {
							e.printStackTrace();
						}
				int idann2=Integer.parseInt(request.getParameter("id"));
		 		String titre = request.getParameter("titre");
		 		Float prix = Float.parseFloat(request.getParameter("prix")); 
		 		String description = request.getParameter("description");
		 		int nbrpieces = Integer.parseInt(request.getParameter("nbrpieces"));
		 		int nbrbains = Integer.parseInt(request.getParameter("nbrbains"));
		 		int surface = Integer.parseInt(request.getParameter("surface"));
		 		String TypeAnn=request.getParameter("TypeAnn");
		 		//String province=request.getParameter("province");
		 		//String ville=request.getParameter("ville");
		 		//String rue=request.getParameter("rue");
		 		//Adress adr=DaoAdress.getAdressByIdType(idu,"Annonce");
		 		TypeAnnonce type = TypeAnnonce.valueOf(TypeAnn);
		 		
				Annonce Ann = new Annonce(idann2,titre,prix,description,nbrpieces ,nbrbains,"pardefaut.jpg",surface,type,null);
		 		try {
					boolean resultat=DaoAnnonce.ModifierAnnonce(Ann);
					System.out.println(resultat);
					out.print(resultat);
				} catch (ClassNotFoundException | SQLException e) {
					e.printStackTrace();
				}
 			break;
		 	case "ajouter" : 
		 		
				    
				       
					String titr = request.getParameter("titre");
					Float prixx = Float.parseFloat(request.getParameter("prix")); 
					String descriptio = request.getParameter("description");
					int nbrpiece = Integer.parseInt(request.getParameter("nbrpieces"));
					int nbrbain = Integer.parseInt(request.getParameter("nbrbains"));
					int surfac = Integer.parseInt(request.getParameter("surface"));
					String TypeAn=request.getParameter("TypeAnn");
					//String province=request.getParameter("province");
					//String ville=request.getParameter("ville");
					//String rue=request.getParameter("rue");
					//Adress adr=DaoAdress.getAdressByIdType(idu,"Annonce");
					TypeAnnonce typ = TypeAnnonce.valueOf(TypeAn);
					
				 Ann = new Annonce(titr,prixx,descriptio,null,nbrpiece ,nbrbain,"feature7.jpg",surfac,typ,null);
					try {
					boolean resultat=DaoAnnonce.AjouterAnnonce(Ann, u.getId());
					System.out.println(resultat);
					out.print(resultat);
				} catch (ClassNotFoundException | SQLException e) {
					e.printStackTrace();
				}
			
 			}
	}

}