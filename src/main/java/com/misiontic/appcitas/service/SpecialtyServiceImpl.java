package com.misiontic.appcitas.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.misiontic.appcitas.dao.SpecialtyDAO;
import com.misiontic.appcitas.entity.Specialty;

@Service
public class SpecialtyServiceImpl implements SpecialtyService {

private SpecialtyDAO specialtyDAO;
	
	@Autowired
	public SpecialtyServiceImpl(@Qualifier("specialtyDAOimpl") SpecialtyDAO theSpecialtyDAO) {
		specialtyDAO = theSpecialtyDAO;
	}
	
	@Override
	@Transactional
	public List<Specialty> findAll() {
		return specialtyDAO.findAll();
	}

	@Override
	@Transactional
	public Specialty findById(int theId) {
		return specialtyDAO.findById(theId);
	}

	@Override
	@Transactional
	public void save(Specialty theSpecialty) {
		specialtyDAO.save(theSpecialty);
	}

	@Override
	@Transactional
	public void deleteById(int theId) {
		specialtyDAO.deleteById(theId);
	}


}
