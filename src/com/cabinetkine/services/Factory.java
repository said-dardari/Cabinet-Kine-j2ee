package com.cabinetkine.services;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class Factory {

	private static Connection connection;
	private static String url = "jdbc:mysql://localhost/gestion_cabinet";
	private static String username = "root";
	private static String password = "";

	public Factory() {
		// TODO Auto-generated constructor stub
	}

	public static Connection getInstance(){
		try {
			if (connection == null) {
				Class.forName("com.mysql.jdbc.Driver");
				connection = DriverManager.getConnection(url, username, password);	
			}			
			
		} catch (SQLException | ClassNotFoundException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return connection;
	}

	}