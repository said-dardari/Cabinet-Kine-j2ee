package com.cabinetkine.beans;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.cabinetkine.services.Factory;

public class Utilisateur {

	private int id;
	private String email;
	private String motDePasse;
	
	public Utilisateur() {
		// TODO Auto-generated constructor stub
	}
	


	public Utilisateur(int id, String email, String motDePasse) {
		super();
		this.id = id;
		this.email = email;
		this.motDePasse = motDePasse;
	}



	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMotDePasse() {
		return motDePasse;
	}

	public void setMotDePasse(String motDePasse) {
		this.motDePasse = motDePasse;
	}
	
	public static Boolean authentifier(Utilisateur user) throws ClassNotFoundException, SQLException {
				
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;

		connection = Factory.getInstance();
		statement = connection.createStatement();
		resultSet = statement.executeQuery("select email,motDePasse from utilisateur where email ='" + user.getEmail()
				+ "' and motDePasse='" + user.getMotDePasse() + "'");

		if (resultSet.next()) {
			return true;
		} else {
			return false;
		}

	}


}
