package com.misiontic.appcitas.service;

import java.util.List;

import com.misiontic.appcitas.entity.Cliente;

public interface ClienteService {
public List<Cliente> findAll();
	
	public Cliente findById(int theId);
	
	public void save(Cliente theCliente);
	
	public void deleteById(int theId);
}
