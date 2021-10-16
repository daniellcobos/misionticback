package com.misiontic.appcitas.service;

import java.util.List;

import com.misiontic.appcitas.entity.Specialty;

public interface SpecialtyService {
public List<Specialty> findAll();
	
	public Specialty findById(int theId);
	
	public void save(Specialty theSpec);
	
	public void deleteById(int theId);
}
