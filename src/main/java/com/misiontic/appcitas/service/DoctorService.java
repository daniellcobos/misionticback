package com.misiontic.appcitas.service;

import java.util.List;

import com.misiontic.appcitas.entity.Doctor;


public interface DoctorService {
	public List<Doctor> findAll();
	
	public Doctor findById(int theId);
	
	public void save(Doctor theDoctor);
	
	public void deleteById(int theId);
}
