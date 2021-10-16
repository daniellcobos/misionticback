package com.misiontic.appcitas.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.misiontic.appcitas.entity.Cliente;

@Repository
public class ClienteDAOimpl implements ClienteDAO {

	private EntityManager entityManager;
	@Autowired
	public ClienteDAOimpl(EntityManager entityManager) {
		this.entityManager = entityManager;
	}
	@Override
	public List<Cliente> findAll() {
		Query theQuery = entityManager.createQuery("from Cliente");
		List <Cliente> Clientes = theQuery.getResultList(); 
		return Clientes;
	}

	@Override
	public Cliente findById(int theId) {
		Cliente searchedSpec = entityManager.find(Cliente.class,theId);
		return searchedSpec;
	}

	@Override
	public void save(Cliente theCliente) {
		// save or update the employee
				Cliente dbCliente = entityManager.merge(theCliente);
				
				// update with id from db ... so we can get generated id for save/insert
				theCliente.setId(dbCliente.getId());

	}

	@Override
	public void deleteById(int theId) {
		// delete object with primary key
		Query theQuery = entityManager.createQuery(
							"delete from Cliente where id=:ClienteId");
		
		theQuery.setParameter("ClienteId", theId);
		
		theQuery.executeUpdate();

	}

}
