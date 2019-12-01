package com.cabinetkine.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cabinetkine.beans.Prescription;
import com.cabinetkine.dao.NomenclatureDAO;
import com.cabinetkine.dao.PathologieDAO;
import com.cabinetkine.dao.PatientDAO;
import com.cabinetkine.dao.PrescriptionDAO;

/**
 * Servlet implementation class PrescriptionServlet
 */
@WebServlet(name="prescription",urlPatterns={"/prescription"})
public class PrescriptionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PrescriptionServlet() {
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
	    NomenclatureDAO nomenclatureDAO = new NomenclatureDAO();
	    request.setAttribute("Nomenclatures", nomenclatureDAO.getListe());
	    PathologieDAO pathologieDAO = new PathologieDAO();
	    request.setAttribute("Pathologies", pathologieDAO.getListe());
	    PrescriptionDAO prescriptionDAO = new PrescriptionDAO();
	    request.setAttribute("Prescriptions", prescriptionDAO.getListe());
	    
		request.getRequestDispatcher("/WEB-INF/prescription.jsp").forward(request, response);
	}

	public Prescription getParameters(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		 int id = request.getParameter("id") != null ? Integer.parseInt( request.getParameter("id")):0;;
		 String datePrescription = (String)request.getParameter("datePrescription");
		 String seances = (String)request.getParameter("seances");
		 int semaine = request.getParameter("semaine") != null ? Integer.parseInt( request.getParameter("semaine")):0;
		 String diagnosticMedecin = (String)request.getParameter("diagnosticMedecin");
		 String medecinPrescripteur = (String)request.getParameter("medecinPrescripteur");
		 int idPathologie = request.getParameter("idPathologie") != null ? Integer.parseInt(request.getParameter("idPathologie")):0;
		 int idNomenclature = request.getParameter("idNomenclature") != null ? Integer.parseInt(request.getParameter("idNomenclature")):0;
		 int idPatient = request.getParameter("idPatient") != null ? Integer.parseInt(request.getParameter("idPatient")):0;
		 
		 
		 Prescription prescription = new Prescription(id,datePrescription,seances,semaine,diagnosticMedecin,medecinPrescripteur,idPathologie,idNomenclature,idPatient);
		return prescription;
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
	    PrescriptionDAO prescriptionDAO = new PrescriptionDAO();
	     
	    
	    
	    String btnAdd = (String)request.getParameter("add");
		String btnUpdate = (String)request.getParameter("update");
		String btnDelete = (String)request.getParameter("delete");
		String btnView = (String)request.getParameter("view");
		
		String message = "";
		if (btnAdd != null && !btnAdd.isEmpty()) {
			prescriptionDAO.create(getParameters(request, response));
			message = "Ajout effectué avec succès";
		}
		if (btnUpdate != null && !btnUpdate.isEmpty()) {
			prescriptionDAO.update(getParameters(request, response));
			 message = "Mettre à jour effectué avec succès";
		}
		if (btnDelete != null && !btnDelete.isEmpty()) {
			prescriptionDAO.delete(getParameters(request, response));
			 message = "Suppression effectué avec succès";
		}
		if (btnView != null && !btnView.isEmpty()) {
			Prescription Prescription = prescriptionDAO.find(getParameters(request, response).getId());
			request.setAttribute("Prescription", Prescription);
		}
		request.setAttribute("message", message);		
		
		doGet(request, response);
	}

}
