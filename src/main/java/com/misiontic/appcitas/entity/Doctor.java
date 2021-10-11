package com.misiontic.appcitas.entity;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Doctor")
public class Doctor {

	// define fields
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="NAME")
	private String Name;
	
	@Column(name="SPECIALTY")
	private String Specialty;
	
	@Column(name="GRADUATE_YEAR")
	private int Year;
	@Column(name="DEPARTMENT_ID")
	private int DepartmentId;
	public Doctor(int id, String name, String specialty, int year, int departmentId) {
		super();
		this.id = id;
		Name = name;
		Specialty = specialty;
		Year = year;
		DepartmentId = departmentId;
	}
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
	public String getSpecialty() {
		return Specialty;
	}
	public void setSpecialty(String specialty) {
		Specialty = specialty;
	}
	public int getYear() {
		return Year;
	}
	public void setYear(int year) {
		Year = year;
	}
	public int getDepartmentId() {
		return DepartmentId;
	}
	public void setDepartmentId(int departmentId) {
		DepartmentId = departmentId;
	}
	
		
	// define constructors
	
	

}

