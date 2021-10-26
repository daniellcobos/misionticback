package com.misiontic.appcitas.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonView;

@Entity
public class Mensajes {
	@Id

	@Column(name="id")
	@JsonView({view.Cliente.class, view.Mensajes.class })
	private int idMessage;
	@JsonView({view.Cliente.class, view.Mensajes.class })
	@Column(name="messageText")
	private String messageText;
	@ManyToOne()
	@JsonProperty("doctor")
	@JsonView({view.Mensajes.class })
    @JoinColumn(name = "Doctor")
	private Doctor doctor; 
	@JsonView({view.Mensajes.class })
	@ManyToOne()
    @JoinColumn(name = "Cliente")
	private Cliente client; 
	
	
	public Mensajes() {}

	public Mensajes(int idMessage, String messageText, Doctor doctor, Cliente client) {
		this.idMessage = idMessage;
		this.messageText = messageText;
		this.client = client;
		this.doctor = doctor;
	}

	public int getIdMessage() {
		return idMessage;
	}

	public void setIdMessage(int idMessage) {
		this.idMessage = idMessage;
	}

	public String getMessageText() {
		return messageText;
	}

	public void setMessageText(String messageText) {
		this.messageText = messageText;
	}

	public Cliente getCliente() {
		return client;
	}

	public void setCliente(Cliente cliente) {
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
	
	
}
