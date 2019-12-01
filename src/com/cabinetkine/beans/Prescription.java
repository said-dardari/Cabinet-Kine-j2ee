package com.cabinetkine.beans;

public class Prescription {

	private int id;
	private String datePrescription;
	private String seances;
	private int semaine;
	private String diagnosticMedecin;
	private String medecinPrescripteur;
	private int idPathologie;
	private int idNomenclature;	
	private int idPatient;	
	
	
	public Prescription() {
		// TODO Auto-generated constructor stub
	}


	public Prescription(int id, String datePrescription, String seances, int semaine, String diagnosticMedecin,
			String medecinPrescripteur, int idPathologie, int idNomenclature,int idPatient) {
		super();
		this.id = id;
		this.datePrescription = datePrescription;
		this.seances = seances;
		this.semaine = semaine;
		this.diagnosticMedecin = diagnosticMedecin;
		this.medecinPrescripteur = medecinPrescripteur;
		this.idPathologie = idPathologie;
		this.idNomenclature = idNomenclature;
		this.idPatient = idPatient;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getDatePrescription() {
		return datePrescription;
	}


	public void setDatePrescription(String datePrescription) {
		this.datePrescription = datePrescription;
	}


	public String getSeances() {
		return seances;
	}


	public void setSeances(String seances) {
		this.seances = seances;
	}


	public int getSemaine() {
		return semaine;
	}


	public void setSemaine(int semaine) {
		this.semaine = semaine;
	}


	public String getDiagnosticMedecin() {
		return diagnosticMedecin;
	}


	public void setDiagnosticMedecin(String diagnosticMedecin) {
		this.diagnosticMedecin = diagnosticMedecin;
	}


	public String getMedecinPrescripteur() {
		return medecinPrescripteur;
	}


	public void setMedecinPrescripteur(String medecinPrescripteur) {
		this.medecinPrescripteur = medecinPrescripteur;
	}


	public int getIdPathologie() {
		return idPathologie;
	}


	public void setIdPathologie(int idPathologie) {
		this.idPathologie = idPathologie;
	}


	public int getIdNomenclature() {
		return idNomenclature;
	}


	public void setIdNomenclature(int idNomenclature) {
		this.idNomenclature = idNomenclature;
	}


	public int getIdPatient() {
		return idPatient;
	}


	public void setIdPatient(int idPatient) {
		this.idPatient = idPatient;
	}

}
