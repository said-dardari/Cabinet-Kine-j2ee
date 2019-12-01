package com.cabinetkine.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.cabinetkine.beans.Prescription;

public class PrescriptionDAO extends DAO<Prescription> {

	public Prescription find(int id) {

		Prescription obj = new Prescription();
		try {
			ResultSet result = this.connection.createStatement()
					.executeQuery("SELECT * FROM prescription WHERE id = " + id);
			if(result.first())		
			
				obj = new Prescription(result.getInt("id"), result.getString("datePrescription"), result.getString("seances")
						, result.getInt("semaine"), result.getString("diagnosticMedecin"), result.getString("medecinPrescripteur")
						,result.getInt("idPathologie"), result.getInt("idNomenclature"), result.getInt("idPatient")
						);

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return obj;

	}

	@Override
	public void create(Prescription obj) {
		try {

			PreparedStatement prepare = this.connection
					.prepareStatement("INSERT INTO `prescription`( `datePrescription`, `seances`, `semaine`, "
							+ "`diagnosticMedecin`, `medecinPrescripteur`, `idPathologie`, `idNomenclature`, `idPatient`)"
					+ " VALUES (?,?,?,?,?,?,?,?)");
			prepare.setString(1, obj.getDatePrescription()); prepare.setString(2, obj.getSeances());
			prepare.setInt(3, obj.getSemaine()); prepare.setString(4, obj.getDiagnosticMedecin());
			prepare.setString(5, obj.getMedecinPrescripteur()); prepare.setInt(6, obj.getIdPathologie());
			prepare.setInt(7, obj.getIdNomenclature()); prepare.setInt(8, obj.getIdPatient()); 

			prepare.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void update(Prescription obj) {
		try {

			this.connection.createStatement().executeUpdate("UPDATE `prescription` SET `datePrescription`='"+obj.getDatePrescription()+""
					+ "',`seances`='"+obj.getSeances()+"',`semaine`="+obj.getSemaine()+",`diagnosticMedecin`='"+obj.getDiagnosticMedecin()+""
							+ "',`medecinPrescripteur`='"+obj.getMedecinPrescripteur()+"',`idPathologie`="+obj.getIdPathologie()+""
									+ ",`idNomenclature`="+obj.getIdNomenclature()+",`idPatient`="+obj.getIdPatient()+" WHERE id = " + obj.getId());

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	@Override
	public void delete(Prescription obj) {
		try {

			this.connection.createStatement().executeUpdate("DELETE FROM prescription WHERE id = " + obj.getId());

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<Prescription> getListe() {
		List<Prescription> list = new ArrayList<Prescription>();
		try {
			ResultSet result = this.connection.createStatement().executeQuery("SELECT * FROM prescription ");
			while(result.next()) {
				Prescription obj = new Prescription(result.getInt("id"), result.getString("datePrescription"), result.getString("seances")
						, result.getInt("semaine"), result.getString("diagnosticMedecin"), result.getString("medecinPrescripteur")
						,result.getInt("idPathologie"), result.getInt("idNomenclature"), result.getInt("idPatient")
						);
				list.add(obj);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

}
