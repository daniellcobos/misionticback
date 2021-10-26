package com.misiontic.appcitas.entity;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonView;

@Entity

public class Doctor {

	// define fields
	
	@Id

	@Column(name="id")
	@JsonView({view.Doctor.class , view.Specialty.class,view.Mensajes.class})
	private int id;
	
	@Column(name="NAME")
	@JsonView({view.Doctor.class , view.Specialty.class,view.Mensajes.class})
	private String Name;
	@Column(name="DESCRIPCION")
	@JsonView({view.Doctor.class,view.Mensajes.class})
	private String description;
	@Column(name="GRADUATE_YEAR")
	@JsonView({view.Doctor.class,view.Mensajes.class})
	private int graduate_year;
	@JsonProperty("department")
	@Column(name="DEPARTMENT")
	@JsonView({view.Doctor.class,view.Mensajes.class})
	private String department;
	@JsonView({view.Doctor.class,view.Mensajes.class})
	@ManyToOne()
    @JoinColumn(name = "Specialty")
	private Specialty Specialty; 
	@JsonIgnore 
	@OneToMany(mappedBy = "doctor", cascade = CascadeType.ALL, orphanRemoval = true)
	private List<Mensajes> messages;
	@JsonIgnore 
	@OneToMany(mappedBy = "doctor", cascade = CascadeType.ALL, orphanRemoval = true)
	private List<Reservas> reservations;
	public Doctor() {}
	public Doctor(int id, String name, Specialty specialty, int graduate_year, String department_id,
			String description,List<Mensajes> messages,List<Reservas> reservations) {
		this.id = id;
		Name = name;
		Specialty = specialty;
		this.graduate_year = graduate_year;
		this.department = department_id;
		this.description =description;
		this.messages = messages;
		this.reservations = reservations;
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
	public Specialty getSpecialty() {
		Specialty.setDoctors(null);
		return Specialty;
	}
	public void setSpecialty(Specialty specialty) {
		Specialty = specialty;
	}
	public int getYear() {
		return graduate_year;
	}
	public void setYear(int year) {
		graduate_year = year;
	}
	@JsonProperty("department")
	public String getDepartment() {
		return department;
	}
	@JsonProperty("department")
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public List<Mensajes> getMessages() {
		return messages;
	}
	public void setMessages(List<Mensajes> messages) {
		this.messages = messages;
	}
	public List<Reservas> getReservations() {
		return reservations;
	}
	public void setReservations(List<Reservas> reservations) {
		this.reservations = reservations;
	}
	@Override
	  public String toString() {
	    return Integer.toString(id);
	  }
		
	
	
	

}

