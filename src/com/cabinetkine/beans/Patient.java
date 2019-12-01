package com.cabinetkine.beans;

public class Patient {
	
	private int id;
	private String nom;
	private String prenom;
	private String tele;
	private String email;
	private String sexe;
	private String adresse;
	private String dateNaissance;
	private String pays;
	private String ville;
	private String codePostale;
	private int numMutualite;
	private int numeroAdherant;
	private String medecinTraitant;

	public Patient() {
		// TODO Auto-generated constructor stub
	}

	public Patient(int id, String nom, String prenom, String tele, String email, String sexe, String adresse,
			String dateNaissance, String pays, String ville, String codePostale, int numMutualite, int numeroAdherant,
			String medecinTraitant) {
		super();
		this.id = id;
		this.nom = nom;
		this.prenom = prenom;
		this.tele = tele;
		this.email = email;
		this.sexe = sexe;
		this.adresse = adresse;
		this.dateNaissance = dateNaissance;
		this.pays = pays;
		this.ville = ville;
		this.codePostale = codePostale;
		this.numMutualite = numMutualite;
		this.numeroAdherant = numeroAdherant;
		this.medecinTraitant = medecinTraitant;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getTele() {
		return tele;
	}

	public void setTele(String tele) {
		this.tele = tele;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSexe() {
		return sexe;
	}

	public void setSexe(String sexe) {
		this.sexe = sexe;
	}

	public String getAdresse() {
		return adresse;
	}

	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}

	public String getDateNaissance() {
		return dateNaissance;
	}

	public void setDateNaissance(String dateNaissance) {
		this.dateNaissance = dateNaissance;
	}

	public String getPays() {
		return pays;
	}

	public void setPays(String pays) {
		this.pays = pays;
	}

	public String getVille() {
		return ville;
	}

	public void setVille(String ville) {
		this.ville = ville;
	}

	public String getCodePostale() {
		return codePostale;
	}

	public void setCodePostale(String codePostale) {
		this.codePostale = codePostale;
	}

	public int getNumMutualite() {
		return numMutualite;
	}

	public void setNumMutualite(int numMutualite) {
		this.numMutualite = numMutualite;
	}

	public int getNumeroAdherant() {
		return numeroAdherant;
	}

	public void setNumeroAdherant(int numeroAdherant) {
		this.numeroAdherant = numeroAdherant;
	}

	public String getMedecinTraitant() {
		return medecinTraitant;
	}

	public void setMedecinTraitant(String medecinTraitant) {
		this.medecinTraitant = medecinTraitant;
	}		
	
	
}
