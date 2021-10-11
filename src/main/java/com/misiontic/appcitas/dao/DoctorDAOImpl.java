package com.misiontic.appcitas.dao;

import java.util.List;


import com.misiontic.appcitas.entity.Doctor;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class DoctorDAOImpl implements DoctorDAO {
	private EntityManager entityManager;
	@Autowired
	public DoctorDAOImpl(EntityManager entityManager) {
		this.entityManager = entityManager;
	}

	@Override
	public List<Doctor> findAll() {
		// create a query
				Query theQuery = 
						entityManager.createQuery("from Doctor");
				
				// execute query and get result list
				List<Doctor> Doctors = theQuery.getResultList();
				
				// return the results		
				return Doctors;
	}

	@Override
	public Doctor findById(int theId) {
		Doctor searchedDoctor = entityManager.find(Doctor.class,theId);
		return searchedDoctor;
	}

	@Override
	public void save(Doctor theDoc) {
		// save or update the employee
		Doctor dbDoctor = entityManager.merge(theDoc);
		
		// update with id from db ... so we can get generated id for save/insert
		theDoc.setId(dbDoctor.getId());

	}

	@Override
	public void deleteById(int theId) {
		// delete object with primary key
		Query theQuery = entityManager.createQuery(
							"delete from Doctor where id=:DoctorId");
		
		theQuery.setParameter("DoctorId", theId);
		
		theQuery.executeUpdate();
	}

}


