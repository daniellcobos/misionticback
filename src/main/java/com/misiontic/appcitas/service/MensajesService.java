package com.misiontic.appcitas.service;

import java.util.List;

import com.misiontic.appcitas.entity.Mensajes;

public interface MensajesService {
public List<Mensajes> findAll();
	
	public Mensajes findById(int theId);
	
	public void save(Mensajes theMessage);
	
	public void deleteById(int theId);
}
