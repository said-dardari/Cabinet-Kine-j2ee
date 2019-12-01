package com.cabinetkine.dao;

import java.util.List;

import com.cabinetkine.services.Factory;
import java.sql.Connection;

public abstract class DAO<T> {
	
	public Connection connection = Factory.getInstance();
	
	public abstract T find(int id);
	public abstract void create(T obj);
	public abstract void update(T obj);
	public abstract void delete(T obj);
	public abstract List<T> getListe();
	
}
