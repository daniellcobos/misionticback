package com.misiontic.appcitas.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonView;

@Entity
public class Cliente {
	@Id
	@JsonProperty("idClient")

	@Column(name="id")
	@JsonView({view.Cliente.class, view.Mensajes.class})
	private int idClient;
	
	@Column(name="NAME")
	@JsonView({view.Cliente.class, view.Mensajes.class })
	private String Name;
	@Column(name="EMAIL")
	@JsonView({view.Cliente.class , view.Mensajes.class})
	private String Email;
	@Column(name="PASSWORD")
	@JsonView({view.Cliente.class, view.Mensajes.class })
	private String password;
	@Column(name="AGE")
	@JsonView({view.Cliente.class, view.Mensajes.class })
	private int Age;
	@OneToMany(mappedBy = "client", cascade = CascadeType.ALL, orphanRemoval = true)
	@JsonView({view.Cliente.class })
	private List<Mensajes> messages;
	@JsonView({view.Cliente.class })
	@OneToMany(mappedBy = "client", cascade = CascadeType.ALL, orphanRemoval = true)
	private List<Reservas> reservations;
	
	public Cliente() {

	}

	public Cliente(int idClient, String name, String email, String password, int age, List<Mensajes> messages,
			List<Reservas> reservations) {
		this.idClient = idClient;
		Name = name;
		Email = email;
		this.password = password;
		Age = age;
		this.messages = messages;
		this.reservations = reservations;
	}

	public int getId() {
		return idClient;
	}

	public void setId(int idClient) {
		this.idClient = idClient;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getAge() {
		return Age;
	}

	public void setAge(int age) {
		Age = age;
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
	
	
}
//	[{"idClient":1,"email":"agustin@gmail.com","password":"agustin123",
//"name":"Agustin Parra","age":18,"messages":[],"reservations":[]}]