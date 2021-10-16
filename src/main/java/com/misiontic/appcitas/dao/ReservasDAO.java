package com.misiontic.appcitas.dao;

import java.util.List;

import com.misiontic.appcitas.entity.Reservas;

public interface ReservasDAO {
	public List<Reservas> findAll();
	
	public Reservas findById(int theId);
	
	public void save(Reservas theReserva);
	
	public void deleteById(int theId);
}
