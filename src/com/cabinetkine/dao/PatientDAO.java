package com.cabinetkine.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.cabinetkine.beans.Patient;

public class PatientDAO extends DAO<Patient> {
	
	public Patient find(int id) {

		Patient obj = new Patient();
		try {
			ResultSet result = this.connection.createStatement()
					.executeQuery("SELECT * FROM Patient WHERE id = " + id);
			if (result.first())				
				obj = new Patient(result.getInt("id"), result.getString("nom"), result.getString("prenom")
						, result.getString("tele"), result.getString("email"), result.getString("sexe")
						, result.getString("adresse"), result.getString("dateNaissance"), result.getString("pays")
						, result.getString("ville"), result.getString("codePostale"), result.getInt("numMutualite")
						, result.getInt("numeroAdherant"), result.getString("medecinTraitant")
						);

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return obj;

	}

	@Override
	public void create(Patient obj) {
		try {

			PreparedStatement prepare = this.connection
					.prepareStatement("INSERT INTO `patient`( `nom`, `prenom`, `tele`, `email`, `sexe`, `adresse`, "
					+ "`dateNaissance`, `pays`, `ville`, `codePostale`, `numMutualite`, `numeroAdherant`, `medecinTraitant`)"
					+ " VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)");
			prepare.setString(1, obj.getNom()); prepare.setString(2, obj.getPrenom());
			prepare.setString(3, obj.getTele()); prepare.setString(4, obj.getEmail());
			prepare.setString(5, obj.getSexe()); prepare.setString(6, obj.getAdresse());
			prepare.setString(7, obj.getDateNaissance()); prepare.setString(8, obj.getPays());
			prepare.setString(9, obj.getVille()); prepare.setString(10, obj.getCodePostale());
			prepare.setInt(11, obj.getNumMutualite()); prepare.setInt(12, obj.getNumeroAdherant());
			prepare.setString(13, obj.getMedecinTraitant()); 

			prepare.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void update(Patient obj) {
		try {

			this.connection.createStatement().executeUpdate("UPDATE `patient` SET `nom`='"+obj.getNom()+"',`prenom`='"+obj.getPrenom()+"',"
					+ "`tele`='"+obj.getTele()+"',`email`='"+obj.getEmail()+"',`sexe`='"+obj.getSexe()+"',`adresse`='"+obj.getAdresse()+"',`dateNaissance`='"+obj.getDateNaissance()+"',"
					+ "`pays`='"+obj.getPays()+"',`ville`='"+obj.getVille()+"',`codePostale`='"+obj.getCodePostale()+"',`numMutualite`="+obj.getNumMutualite()+","
					+ "`numeroAdherant`="+obj.getNumeroAdherant()+",`medecinTraitant`='"+obj.getMedecinTraitant()+"' WHERE id = " + obj.getId());

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	@Override
	public void delete(Patient obj) {
		try {

			this.connection.createStatement().executeUpdate("DELETE FROM Patient WHERE id = " + obj.getId());

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<Patient> getListe() {
		List<Patient> list = new ArrayList<Patient>();
		try {
			ResultSet result = this.connection.createStatement().executeQuery("SELECT * FROM Patient ");
			while(result.next()) {
				Patient obj = new Patient(result.getInt("id"), result.getString("nom"), result.getString("prenom")
						, result.getString("tele"), result.getString("email"), result.getString("sexe")
						, result.getString("adresse"), result.getString("dateNaissance"), result.getString("pays")
						, result.getString("ville"), result.getString("codePostale"), result.getInt("numMutualite")
						, result.getInt("numeroAdherant"), result.getString("medecinTraitant")
						);
				list.add(obj);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

}
