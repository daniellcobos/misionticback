package com.misiontic.appcitas.dao;

import java.util.List;

import com.misiontic.appcitas.entity.Cliente;

public interface ClienteDAO {
	public List<Cliente> findAll();
	
	public Cliente findById(int theId);
	
	public void save(Cliente theCliente);
	
	public void deleteById(int theId);
}
