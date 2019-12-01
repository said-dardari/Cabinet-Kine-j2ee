package com.cabinetkine.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.cabinetkine.beans.Nomenclature;

public class NomenclatureDAO extends DAO<Nomenclature> {

	public Nomenclature find(int id) {

		Nomenclature obj = new Nomenclature();
		try {
			ResultSet result = this.connection.createStatement()
					.executeQuery("SELECT * FROM nomenclature WHERE id = " + id);
			if (result.first())
				obj = new Nomenclature(result.getInt("id"), result.getString("nom"), result.getString("description"));

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return obj;

	}

	@Override
	public void create(Nomenclature obj) {
		try {

			PreparedStatement prepare = this.connection
					.prepareStatement("INSERT INTO nomenclature (nom, description) VALUES(?, ?)");
			prepare.setString(1, obj.getNom());
			prepare.setString(2, obj.getDescription());
			prepare.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void update(Nomenclature obj) {
		try {

			this.connection.createStatement().executeUpdate("UPDATE nomenclature SET nom = '" + obj.getNom()
					+ "'  , description='" + obj.getDescription() + "'" + " WHERE id = " + obj.getId());

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	@Override
	public void delete(Nomenclature obj) {
		try {

			this.connection.createStatement().executeUpdate("DELETE FROM nomenclature WHERE id = " + obj.getId());

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<Nomenclature> getListe() {
		List<Nomenclature> list = new ArrayList<Nomenclature>();
		try {
			ResultSet result = this.connection.createStatement().executeQuery("SELECT * FROM nomenclature ");
			while(result.next()) {
				Nomenclature obj = new Nomenclature(result.getInt("id"), result.getString("nom"),
						result.getString("description"));
				list.add(obj);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

}
