package com.misiontic.appcitas.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.misiontic.appcitas.dao.DoctorDAO;
import com.misiontic.appcitas.entity.Doctor;
@Service
public class DoctorServiceImpl implements DoctorService {

private DoctorDAO doctorDAO;
	
	@Autowired
	public DoctorServiceImpl(@Qualifier("doctorDAOImpl") DoctorDAO theDoctorDAO) {
		doctorDAO = theDoctorDAO;
	}
	
	@Override
	@Transactional
	public List<Doctor> findAll() {
		return doctorDAO.findAll();
	}

	@Override
	@Transactional
	public Doctor findById(int theId) {
		return doctorDAO.findById(theId);
	}

	@Override
	@Transactional
	public void save(Doctor theDoctor) {
		doctorDAO.save(theDoctor);
	}

	@Override
	@Transactional
	public void deleteById(int theId) {
		doctorDAO.deleteById(theId);
	}

}
