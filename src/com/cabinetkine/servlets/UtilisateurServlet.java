package com.cabinetkine.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cabinetkine.beans.Utilisateur;
import com.cabinetkine.dao.UtilisateurDAO;

/**
 * Servlet implementation class UtilisateurServlet
 */
@WebServlet(name="utilisateur",urlPatterns={"/utilisateur"})
public class UtilisateurServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UtilisateurServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    
   	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   		// TODO Auto-generated method stub
   		UtilisateurDAO utilisateurDAO = new UtilisateurDAO();
   	    request.setAttribute("Utilisateurs", utilisateurDAO.getListe());
   	    request.setAttribute("count", utilisateurDAO.getListe().size());
   		request.getRequestDispatcher("/WEB-INF/utilisateur.jsp").forward(request, response);
   	}

   	/**
   	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
   	 */
   	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   		// TODO Auto-generated method stub

   		UtilisateurDAO utilisateurDAO = new UtilisateurDAO();
   		String btnAdd = (String)request.getParameter("add");
   		String btnUpdate = (String)request.getParameter("update");
   		String btnDelete = (String)request.getParameter("delete");
   		String btnView = (String)request.getParameter("view");
   		
   		String message = "";
   		if (btnAdd != null && !btnAdd.isEmpty()) {
   			utilisateurDAO.create(getParameters(request, response));
   			message = "Ajout effectué avec succès";
   		}
   		if (btnUpdate != null && !btnUpdate.isEmpty()) {
   			utilisateurDAO.update(getParameters(request, response));
   			 message = "Mettre à jour effectué avec succès";
   		}
   		if (btnDelete != null && !btnDelete.isEmpty()) {
   			utilisateurDAO.delete(getParameters(request, response));
   			 message = "Suppression effectué avec succès";
   		}
   		if (btnView != null && !btnView.isEmpty()) {
   			Utilisateur utilisateur = utilisateurDAO.find(getParameters(request, response).getId());
   			request.setAttribute("Utilisateur", utilisateur);
   		}
   		request.setAttribute("message", message);
   		doGet(request, response);

   	}
   	
   	public Utilisateur getParameters(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   		
   		 int id = request.getParameter("id") != null ? Integer.parseInt( request.getParameter("id")):0;;
   		 String email = (String)request.getParameter("email");
   		 String motDePasse = (String)request.getParameter("motDePasse");
   		 
   		 Utilisateur utilisateur = new Utilisateur(id,email,motDePasse);
   		return utilisateur;
   	}

}
