package com.cabinetkine.dao;

import java.util.ArrayList;
import java.util.List;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.cabinetkine.beans.Utilisateur;

public class UtilisateurDAO extends DAO<Utilisateur> {


	@Override
	public Utilisateur find(int id) {
		
		Utilisateur obj = new Utilisateur();
		try {
            ResultSet result = this.connection
                                    .createStatement().executeQuery("SELECT * FROM utilisateur WHERE id = " + id
                                          );
            if(result.first())
            		obj = new Utilisateur(
            				            result.getInt("id"), 
            				            result.getString("email") , 
                                        result.getString("motDePasse") 
                                    );
            
		    } catch (SQLException e) {
		            e.printStackTrace();
		    }
		   return obj;

	}

	@Override
	public void create(Utilisateur obj) {
		try {			 
		
    			PreparedStatement prepare = this.connection.prepareStatement(
                                                   "INSERT INTO utilisateur (email, motDePasse) VALUES(?, ?)"
                                                    );
				prepare.setString(1, obj.getEmail());
				prepare.setString(2, obj.getMotDePasse());				
				prepare.executeUpdate();								
			
	    } catch (SQLException e) {
	            e.printStackTrace();
	    }
	}

	@Override
	public void update(Utilisateur obj) {
		try {
			
            this.connection	
                 .createStatement().executeUpdate(
                	"UPDATE utilisateur SET email = '" + obj.getEmail() + "'  , motDePasse='" + obj.getMotDePasse() + "'" +
                	" WHERE id = " + obj.getId()
                 );
				
    } catch (SQLException e) {
            e.printStackTrace();
    }
    
	}

	@Override
	public void delete(Utilisateur obj) {
		try {
			
            this.connection
                	.createStatement().executeUpdate(
                         "DELETE FROM utilisateur WHERE id = " + obj.getId()
                    );
		
    } catch (SQLException e) {
            e.printStackTrace();
    }
	}
	
	@Override
	public List<Utilisateur> getListe() {
		List<Utilisateur> list = new ArrayList<Utilisateur>();
		try {
            ResultSet result = this.connection
                                    .createStatement().executeQuery("SELECT * FROM utilisateur "
                                          );
            while(result.next()){
            	Utilisateur	obj = new Utilisateur(
            				            result.getInt("id"), 
            				            result.getString("email") , 
                                        result.getString("motDePasse") 
                                    );
            	list.add(obj);
            }
		    } catch (SQLException e) {
		            e.printStackTrace();
		    }
		   return list;
	}

}
