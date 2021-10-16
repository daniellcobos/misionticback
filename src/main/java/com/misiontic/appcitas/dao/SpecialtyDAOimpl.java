package com.misiontic.appcitas.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.misiontic.appcitas.entity.Specialty;

@Repository
public class SpecialtyDAOimpl implements SpecialtyDAO {
	private EntityManager entityManager;
	@Autowired
	public SpecialtyDAOimpl(EntityManager entityManager) {
		this.entityManager = entityManager;
	}
	@Override
	public List<Specialty> findAll() {
		Query theQuery = entityManager.createQuery("from Specialty");
		List <Specialty> Specialties = theQuery.getResultList(); 
		return Specialties;
	}

	@Override
	public Specialty findById(int theId) {
		Specialty searchedSpec = entityManager.find(Specialty.class,theId);
		return searchedSpec;
	}

	@Override
	public void save(Specialty theSpec) {
		// save or update the employee
				Specialty dbSpecialty = entityManager.merge(theSpec);
				
				// update with id from db ... so we can get generated id for save/insert
				theSpec.setId(dbSpecialty.getId());

	}

	@Override
	public void deleteById(int theId) {
		// delete object with primary key
		Query theQuery = entityManager.createQuery(
							"delete from Specialty where id=:SpecialtyId");
		
		theQuery.setParameter("SpecialtyId", theId);
		
		theQuery.executeUpdate();

	}

}
