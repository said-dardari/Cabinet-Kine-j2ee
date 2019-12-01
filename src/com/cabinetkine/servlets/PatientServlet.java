package com.cabinetkine.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cabinetkine.beans.Patient;
import com.cabinetkine.dao.PatientDAO;

/**
 * Servlet implementation class PatientServlet
 */
@WebServlet(name="patient",urlPatterns={"/patient"})
public class PatientServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PatientServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	    PatientDAO patientDAO = new PatientDAO();
	    request.setAttribute("Patients", patientDAO.getListe());
	    request.setAttribute("count", patientDAO.getListe().size());
		request.getRequestDispatcher("/WEB-INF/patient.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PatientDAO patientDAO = new PatientDAO();
		String btnAdd = (String)request.getParameter("add");
		String btnUpdate = (String)request.getParameter("update");
		String btnDelete = (String)request.getParameter("delete");
		String btnView = (String)request.getParameter("view");
		
		String message = "";
		if (btnAdd != null && !btnAdd.isEmpty()) {
			patientDAO.create(getParameters(request, response));
			message = "Ajout effectué avec succès";
		}
		if (btnUpdate != null && !btnUpdate.isEmpty()) {
			 patientDAO.update(getParameters(request, response));
			 message = "Mettre à jour effectué avec succès";
		}
		if (btnDelete != null && !btnDelete.isEmpty()) {
			patientDAO.delete(getParameters(request, response));
			 message = "Suppression effectué avec succès";
		}
		if (btnView != null && !btnView.isEmpty()) {
			Patient patient = patientDAO.find(getParameters(request, response).getId());
			request.setAttribute("patient", patient);
		}
		request.setAttribute("message", message);
		doGet(request, response);
		
	}
	
	public Patient getParameters(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				

		 int id = request.getParameter("id") != null ? Integer.parseInt( request.getParameter("id")):0;;
		 String nom = (String)request.getParameter("nom");
		 String prenom = (String)request.getParameter("prenom");
		 String tele = (String)request.getParameter("tele");
		 String email = (String)request.getParameter("email");
		 String sexe = (String)request.getParameter("sexe");
		 String adresse = (String)request.getParameter("adresse");
		 String dateNaissance = (String)request.getParameter("dateNaissance");
		 String pays = (String)request.getParameter("pays");
		 String ville = (String)request.getParameter("ville");
		 String codePostale = (String)request.getParameter("codePostale");
		 int numMutualite = request.getParameter("numMutualite") != null ? Integer.parseInt( request.getParameter("numMutualite")):0;
		 int numeroAdherant = request.getParameter("numeroAdherant") != null ? Integer.parseInt(request.getParameter("numeroAdherant")):0;
		 String medecinTraitant = (String)request.getParameter("medecinTraitant");
		 
		Patient patient = new Patient(id,nom,prenom,tele,email,sexe,adresse,dateNaissance,pays,ville,codePostale,numMutualite,numeroAdherant,medecinTraitant);
		return patient;
	}

}
