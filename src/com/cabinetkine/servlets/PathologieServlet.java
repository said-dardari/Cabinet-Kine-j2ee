package com.cabinetkine.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cabinetkine.beans.Pathologie;
import com.cabinetkine.dao.PathologieDAO;

/**
 * Servlet implementation class PathologieServlet
 */

@WebServlet(name="pathologie",urlPatterns={"/pathologie"})
public class PathologieServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PathologieServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PathologieDAO pathologieDAO = new PathologieDAO();
	    request.setAttribute("Pathologies", pathologieDAO.getListe());
	    request.setAttribute("count", pathologieDAO.getListe().size());
		request.getRequestDispatcher("/WEB-INF/pathologie.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		PathologieDAO pathologieDAO = new PathologieDAO();
		String btnAdd = (String)request.getParameter("add");
		String btnUpdate = (String)request.getParameter("update");
		String btnDelete = (String)request.getParameter("delete");
		String btnView = (String)request.getParameter("view");
		
		String message = "";
		if (btnAdd != null && !btnAdd.isEmpty()) {
			pathologieDAO.create(getParameters(request, response));
			message = "Ajout effectué avec succès";
		}
		if (btnUpdate != null && !btnUpdate.isEmpty()) {
			pathologieDAO.update(getParameters(request, response));
			 message = "Mettre à jour effectué avec succès";
		}
		if (btnDelete != null && !btnDelete.isEmpty()) {
			pathologieDAO.delete(getParameters(request, response));
			 message = "Suppression effectué avec succès";
		}
		if (btnView != null && !btnView.isEmpty()) {
			Pathologie pathologie = pathologieDAO.find(getParameters(request, response).getId());
			request.setAttribute("pathologie", pathologie);
		}
		request.setAttribute("message", message);
		doGet(request, response);

	}
	
	public Pathologie getParameters(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 int id = request.getParameter("id") != null ? Integer.parseInt( request.getParameter("id")):0;;
		 String nom = (String)request.getParameter("nom");
		 String description = (String)request.getParameter("description");
		 
		 Pathologie pathologie = new Pathologie(id,nom,description);
		return pathologie;
	}


}
