package com.misiontic.appcitas.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.fasterxml.jackson.annotation.JsonView;

@Entity
public class Reservas {
	@Id

	@Column(name="id")
	@JsonView({view.Doctor.class , view.Cliente.class,view.Reservas.class})
	private int idReservation;
	@Column(name="startDate")
	@JsonView({view.Doctor.class , view.Cliente.class,view.Reservas.class})
	private Date startDate;
	@Column(name="devolutionDate")
	@JsonView({view.Doctor.class , view.Cliente.class,view.Reservas.class})
	private Date devolutionDate;
	@Column(name="score")
	@JsonView({view.Doctor.class , view.Cliente.class,view.Reservas.class})
	private int score;
	@ManyToOne()
    @JoinColumn(name = "Doctor")
	@JsonView({view.Doctor.class , view.Cliente.class,view.Reservas.class})
	private Doctor doctor; 
	@ManyToOne()
    @JoinColumn(name = "Cliente")
	@JsonView({view.Doctor.class , view.Cliente.class,view.Reservas.class})
	private Cliente client; 
	
	
	public Reservas() {}

	public Reservas(int idReservation, Date startDate, Date devolutionDate, Cliente client, Doctor doctor, int score) {
		this.idReservation = idReservation;
		this.startDate = startDate;
		this.devolutionDate = devolutionDate;
		this.client = client;
		this.doctor = doctor;
		this.score = score;
	}

	public int getIdReservation() {
		return idReservation;
	}

	public void setIdReservation(int idReservation) {
		this.idReservation = idReservation;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getDevolutionDate() {
		return devolutionDate;
	}

	public void setDevolutionDate(Date devolutionDate) {
		this.devolutionDate = devolutionDate;
	}

	public Cliente getClient() {
		return client;
	}

	public void setClient(Cliente cliente) {
		this.client = cliente;
	}

	public Doctor getDoctor() {
		return doctor;
	}

	public void setDoctor(Doctor doctor) {
		this.doctor = new Doctor();
		this.doctor.setId(doctor.getId());
		this.doctor.setSpecialty(new Specialty());
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}
	
	
}
//{"startDate":"2020-12-20","devolutionDate":"2020-12-20","client":{"idClient":1},"doctor":{"id":1}}