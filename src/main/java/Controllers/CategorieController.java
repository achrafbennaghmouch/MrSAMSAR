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

import Dao.CategorieDao;
import Models.Categorie;







/**
 * Servlet implementation class CategorieController
 */
@WebServlet({"/categorie","/modifie","/detailss"})
public class CategorieController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String path =request.getRequestURI().split("/")[2];
		//out.print(path);
		switch (path) {
		case "categorie" : this.getServletContext().getRequestDispatcher("/WEB-INF/pages/Authsystem/Categorie.jsp").include(request, response);
		break;
		case "modifie" : this.getServletContext().getRequestDispatcher("/WEB-INF/pages/Authsystem/Modifier.jsp").include(request, response);
		break;
		case "detailss" : this.getServletContext().getRequestDispatcher("/WEB-INF/pages/Authsystem/DetailsCat.jsp").include(request, response);
		break;
		
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		((HttpServletResponse) response).addHeader("Access-Control-Origin","*");
    	((HttpServletResponse) response).addHeader("Access-Control-Methods","GET,OPTIONS,HEAD,PUT,POST");
    	PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		String nom=request.getParameter("name");
		String desc=request.getParameter("description");
		Categorie cat= new Categorie(nom, desc);
		String op=request.getParameter("op");
		session.setAttribute("currentuser",cat);

	
		
		switch (op) {
		case "Add":
		
			try {
				if (CategorieDao.CategorieexistByName(nom)==false) {
				out.print(CategorieDao.AddCategorie(new Categorie(request.getParameter("name"),request.getParameter("description"))));
				response.sendRedirect("http://localhost:8080/Mrsamsar/categorie");}
			} catch (ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			}
			break;
		case "Delete" :
			
			try {
				out.print(CategorieDao.DeleteCategorie(Integer.parseInt(request.getParameter("id"))));
			} catch (NumberFormatException | ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			};
			break;
		case "Edit":
			
					
				 try {
					 if (CategorieDao.CategorieexistByName(nom)==false) {
				
					out.print(CategorieDao.updateCategorie(new Categorie(Integer.parseInt(request.getParameter("id")),request.getParameter("name"),request.getParameter("description"))));
					 }
				} catch (ClassNotFoundException | SQLException e) {
					e.printStackTrace();
				}
			break;
	}
}}
	
