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
import Dao.DaoUser;
import Models.User;
import enums.TypeAdress;

@WebServlet("/modifierInfoProfil")
public class InfoProfile extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			 ((HttpServletResponse) response).addHeader("Access-Control-Allow-Origin", "*");
		     ((HttpServletResponse) response).addHeader("Access-Control-Allow-Methods","GET, OPTIONS, HEAD, PUT, POST");
		     
		        PrintWriter out = response.getWriter();
			    HttpSession ses = request.getSession();
			    User u = (User)ses.getAttribute("currentuser");   
		        String op=request.getParameter("op");
		        //int idU=u.getId();
		        
		        switch (op) {
		        case "UpdateInfo" : 
		        String nom = request.getParameter("nom_user");
				 String prenom = request.getParameter("prenom_user");
				 int numtel_user = Integer.parseInt(request.getParameter("numtel_user"));
				 String province_user = request.getParameter("province_user");
				 String ville_user =request.getParameter("ville_user");
				 String quartier_user =request.getParameter("quartier_user");
				 String date =request.getParameter("dateN_user"); 
				 User nv_u = new User(u.getId(), nom, prenom,  date,u.getRole(),u.getC(), null);
				 Adress nv_adr = new Adress(u.getAdress().getId(),ville_user, province_user,quartier_user ,TypeAdress.Client);
				 try {
					nv_u.getC().setNumtel(numtel_user);
					boolean res=DaoUser.ModifierUser(nv_u,numtel_user);
					boolean rs=DaoAdress.ModifierAdress(nv_adr);
					if(res==true && rs==true) {
						nv_u.setAdress(nv_adr);
						out.print("true");
						System.out.println(true);
						System.out.println("Province :"+province_user);System.out.println("Ville :"+ville_user);System.out.println("Quartier :"+quartier_user);
					}else {
						out.print("false");
						System.out.println(false);
					}
				} catch (ClassNotFoundException | SQLException e) {
					e.printStackTrace();
				}
		        case "MesFavoris" : 
		        	
		        break;
	   }
	}
}
