package com.misiontic.appcitas.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.misiontic.appcitas.entity.Reservas;

@Repository
public class ReservasDAOimpl implements ReservasDAO {

	private EntityManager entityManager;
	@Autowired
	public ReservasDAOimpl(EntityManager entityManager) {
		this.entityManager = entityManager;
	}
	@Override
	public List<Reservas> findAll() {
		Query theQuery = entityManager.createQuery("from Reservas");
		List <Reservas> Reservas = theQuery.getResultList(); 
		return Reservas;
	}

	@Override
	public Reservas findById(int theId) {
		Reservas searchedSpec = entityManager.find(Reservas.class,theId);
		return searchedSpec;
	}

	@Override
	public void save(Reservas theSpec) {
		// save or update the employee
				Reservas dbReservas = entityManager.merge(theSpec);
				
				// update with id from db ... so we can get generated id for save/insert
				theSpec.setIdReservation(dbReservas.getIdReservation());

	}

	@Override
	public void deleteById(int theId) {
		// delete object with primary key
		Query theQuery = entityManager.createQuery(
							"delete from Reservas where id=:ReservasId");
		
		theQuery.setParameter("ReservasId", theId);
		
		theQuery.executeUpdate();

	}

}
