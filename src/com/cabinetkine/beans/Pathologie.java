package com.cabinetkine.beans;

public class Pathologie {

	private int id;
	private String nom;
	private String description;
		
	
	public Pathologie() {
		// TODO Auto-generated constructor stub
	}


	public Pathologie(int id, String nom, String description) {
		super();
		this.id = id;
		this.nom = nom;
		this.description = description;
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


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}
	
}
