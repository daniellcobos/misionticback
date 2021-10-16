package com.misiontic.appcitas.dao;

import java.util.List;

import com.misiontic.appcitas.entity.Mensajes;

public interface MensajeDAO {
	public List<Mensajes> findAll();
	
	public Mensajes findById(int theId);
	
	public void save(Mensajes theMessage);
	
	public void deleteById(int theId);
}
