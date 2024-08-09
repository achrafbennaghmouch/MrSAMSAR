package Controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.DaoCompte;
import Dao.DaoUser;
import Models.Compte;
import Models.User;
import Services.InscriptionService;
import enums.TypeRole;

@WebServlet({"/login","/register","/forget","/form"})
public class AuthSystemControllers extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String path =request.getRequestURI().split("/")[2];
		//out.print(path);
		switch (path) {
		case "login" : this.getServletContext().getRequestDispatcher("/WEB-INF/pages/Authsystem/Authentification.jsp").include(request, response);
		break;
		case "register" : this.getServletContext().getRequestDispatcher("/WEB-INF/pages/Authsystem/Inscription.jsp").include(request, response);
		break;
		case "forget" : this.getServletContext().getRequestDispatcher("/WEB-INF/pages/Authsystem/ForgetPassword.jsp").include(request, response);
		break;
		}
		
	} 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String Login = request.getParameter("login");
		String password = request.getParameter("password");
		String path =request.getRequestURI().split("/")[2];
		//out.print(path);
		switch (path) {
		
		case "login" : try
		{  
			User u= (User) DaoCompte.authentification(Login, password);
			
			if(u!=null) {
				HttpSession session = request.getSession();
				session.setAttribute("currentuser",u);
				//response.sendRedirect("http://localhost:8181/Mrsamsar4/profil");
				response.sendRedirect("http://localhost:8080/Mrsamsar/profil");
				} 
				else {		
					response.sendRedirect("http://localhost:8080/Mrsamsar/login");
				}
				}catch (Exception x) {
				System.out.println(x);
				}
		break;
		case "register" : 
			try
			{
		String nom=request.getParameter("nom");
		String prenom=request.getParameter("prenom");
		int numtel= Integer.parseInt(request.getParameter("numtel"));
		String datenaissance=request.getParameter("birthday");
		
		//Adress adr=DaoAdresse.getAdressByIdType(idu,TypeAdress.Client);
		//c = new Compte(res.getInt("idc"),res.getString("email"), res.getString("password"),res.getString("image"),res.getInt("numtel"),adr,true);
		TypeRole role = DaoUser.getRole(Login);
		Compte c = new Compte(Login, password,"profil_pardefaut.jpg",numtel,true);
		User   u=new User(nom, prenom, datenaissance ,role ,c,null);
	     boolean res = InscriptionService.addUser(u);
		if(res){
			HttpSession session = request.getSession();
			session.setAttribute("currentuser",u);
			System.out.println(u);
			response.sendRedirect("http://localhost:8080/Mrsamsar/login");
			//out.print(u);
		  
		}else {
			response.sendRedirect("http://localhost:8080/Mrsamsar/register");
		}
			}catch (Exception x) {
				System.out.println(x);
				}
			
		break;}
	}
	}
