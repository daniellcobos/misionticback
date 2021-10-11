package com.misiontic.appcitas.dao;
import java.util.List;

import com.misiontic.appcitas.entity.Doctor;


public interface DoctorDAO {

	public List<Doctor> findAll();
	
	public Doctor findById(int theId);
	
	public void save(Doctor theDoc);
	
	public void deleteById(int theId);
}
