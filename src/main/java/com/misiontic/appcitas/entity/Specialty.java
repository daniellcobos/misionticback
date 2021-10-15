package com.misiontic.appcitas.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity

public class Specialty {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="NAME")
	private String Name;
	@Column(name="DESCRIPCION")
	private String description;
	@OneToMany(mappedBy = "Specialty", cascade = CascadeType.ALL, orphanRemoval = true)
	private List<Doctor> Doctors;
	
	public Specialty(int id, String name, String description, List<Doctor> doctors) {
		super();
		this.id = id;
		Name = name;
		this.description = description;
		Doctors = doctors;
	}

	public Specialty(){}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public List<Doctor> getDoctors() {
		return Doctors;
	}

	public void setDoctors(List<Doctor> doctors) {
		Doctors = doctors;
	}
	
	
}
