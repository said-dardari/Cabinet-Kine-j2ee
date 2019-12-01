package com.cabinetkine.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cabinetkine.beans.Nomenclature;
import com.cabinetkine.dao.NomenclatureDAO;


/**
 * Servlet implementation class NomenclatureServlet
 */

@WebServlet(name="nomenclature",urlPatterns={"/nomenclature"})
public class NomenclatureServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NomenclatureServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		NomenclatureDAO nomenclatureDAO = new NomenclatureDAO();
	    request.setAttribute("Nomenclatures", nomenclatureDAO.getListe());
	    request.setAttribute("count", nomenclatureDAO.getListe().size());
		request.getRequestDispatcher("/WEB-INF/nomenclature.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		NomenclatureDAO nomenclatureDAO = new NomenclatureDAO();
		String btnAdd = (String)request.getParameter("add");
		String btnUpdate = (String)request.getParameter("update");
		String btnDelete = (String)request.getParameter("delete");
		String btnView = (String)request.getParameter("view");
		
		String message = "";
		if (btnAdd != null && !btnAdd.isEmpty()) {
			nomenclatureDAO.create(getParameters(request, response));
			message = "Ajout effectué avec succès";
		}
		if (btnUpdate != null && !btnUpdate.isEmpty()) {
			nomenclatureDAO.update(getParameters(request, response));
			 message = "Mettre à jour effectué avec succès";
		}
		if (btnDelete != null && !btnDelete.isEmpty()) {
			nomenclatureDAO.delete(getParameters(request, response));
			 message = "Suppression effectué avec succès";
		}
		if (btnView != null && !btnView.isEmpty()) {
			Nomenclature nomenclature = nomenclatureDAO.find(getParameters(request, response).getId());
			request.setAttribute("nomenclature", nomenclature);
		}
		request.setAttribute("message", message);
		doGet(request, response);

	}
	
	public Nomenclature getParameters(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		 int id = request.getParameter("id") != null ? Integer.parseInt( request.getParameter("id")):0;;
		 String nom = (String)request.getParameter("nom");
		 String description = (String)request.getParameter("description");
		 
		 Nomenclature nomenclature = new Nomenclature(id,nom,description);
		return nomenclature;
	}

}
