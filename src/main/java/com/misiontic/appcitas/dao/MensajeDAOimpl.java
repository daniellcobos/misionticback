package com.misiontic.appcitas.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.misiontic.appcitas.entity.Mensajes;
import com.misiontic.appcitas.entity.Mensajes;
@Repository
public class MensajeDAOimpl implements MensajeDAO {

	private EntityManager entityManager;
	@Autowired
	public MensajeDAOimpl (EntityManager entityManager) {
		this.entityManager = entityManager;
	}
	@Override
	public List<Mensajes> findAll() {
		Query theQuery = entityManager.createQuery("from Mensajes");
		List <Mensajes> Messages = theQuery.getResultList(); 
		return Messages;
	}

	@Override
	public Mensajes findById(int theId) {
		Mensajes searchedSpec = entityManager.find(Mensajes.class,theId);
		return searchedSpec;
	}

	@Override
	public void save(Mensajes theSpec) {
		// save or update the employee
				Mensajes dbMensajes = entityManager.merge(theSpec);
				
				// update with id from db ... so we can get generated id for save/insert
				theSpec.setIdMessage(dbMensajes.getIdMessage());

	}

	@Override
	public void deleteById(int theId) {
		// delete object with primary key
		Query theQuery = entityManager.createQuery(
							"delete from Mensajes where id=:MensajesId");
		
		theQuery.setParameter("MensajesId", theId);
		
		theQuery.executeUpdate();

	}

}
