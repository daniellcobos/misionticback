package com.misiontic.appcitas.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.misiontic.appcitas.dao.ClienteDAO;
import com.misiontic.appcitas.entity.Cliente;

@Service
public class ClienteServiceImpl implements ClienteService {

private ClienteDAO clienteDAO;
	
	@Autowired
	public ClienteServiceImpl(@Qualifier("clienteDAOimpl") ClienteDAO theClienteDAO) {
		clienteDAO = theClienteDAO;
	}
	
	@Override
	@Transactional
	public List<Cliente> findAll() {
		return clienteDAO.findAll();
	}

	@Override
	@Transactional
	public Cliente findById(int theId) {
		return clienteDAO.findById(theId);
	}

	@Override
	@Transactional
	public void save(Cliente theCliente) {
		clienteDAO.save(theCliente);
	}

	@Override
	@Transactional
	public void deleteById(int theId) {
		clienteDAO.deleteById(theId);
	}
}
