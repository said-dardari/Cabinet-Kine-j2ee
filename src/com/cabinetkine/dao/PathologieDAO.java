package com.cabinetkine.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.cabinetkine.beans.Pathologie;

public class PathologieDAO extends DAO<Pathologie> {
	
	public Pathologie find(int id) {

		Pathologie obj = new Pathologie();
		try {
			ResultSet result = this.connection.createStatement()
					.executeQuery("SELECT * FROM pathologie WHERE id = " + id);
			if (result.first())
				obj = new Pathologie(result.getInt("id"), result.getString("nom"), result.getString("description"));

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return obj;

	}

	@Override
	public void create(Pathologie obj) {
		try {

			PreparedStatement prepare = this.connection
					.prepareStatement("INSERT INTO pathologie (nom, description) VALUES(?, ?)");
			prepare.setString(1, obj.getNom());
			prepare.setString(2, obj.getDescription());
			prepare.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void update(Pathologie obj) {
		try {

			this.connection.createStatement().executeUpdate("UPDATE pathologie SET nom = '" + obj.getNom()
					+ "'  , description='" + obj.getDescription() + "'" + " WHERE id = " + obj.getId());

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	@Override
	public void delete(Pathologie obj) {
		try {

			this.connection.createStatement().executeUpdate("DELETE FROM pathologie WHERE id = " + obj.getId());

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<Pathologie> getListe() {
		List<Pathologie> list = new ArrayList<Pathologie>();
		try {
			ResultSet result = this.connection.createStatement().executeQuery("SELECT * FROM pathologie ");
			while(result.next()) {
				Pathologie obj = new Pathologie(result.getInt("id"), result.getString("nom"),
						result.getString("description"));
				list.add(obj);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}


}
