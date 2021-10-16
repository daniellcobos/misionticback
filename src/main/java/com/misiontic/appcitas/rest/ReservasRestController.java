package com.misiontic.appcitas.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.annotation.JsonView;
import com.misiontic.appcitas.entity.Reservas;
import com.misiontic.appcitas.entity.view;
import com.misiontic.appcitas.service.ReservasService;
@RestController
@RequestMapping("/api")
public class ReservasRestController {
private ReservasService reservasService;
	
	@Autowired
	public ReservasRestController(ReservasService theReservasService) {
		reservasService = theReservasService;
	}
	
	// expose "/reservass" and return list of reservass
	
	@GetMapping("/Reservation/all")
	@JsonView(view.Reservas.class)
	public List<Reservas> findAll() {
		return reservasService.findAll();
	}

	// add mapping for GET /reservass/{reservasId}
	
	@GetMapping("/Reservation/{reservasId}")
	public Reservas getReservas(@PathVariable int reservasId) {
		
		Reservas theReservas = reservasService.findById(reservasId);
		
		if (theReservas == null) {
			throw new RuntimeException("Reservas id not found - " + reservasId);
		}
		
		return theReservas;
	}
	
	// add mapping for POST /reservass - add new reservas
	
	@PostMapping("/Reservation/save")
	public Reservas addReservas(@RequestBody Reservas theReservas) {
		
		// also just in case they pass an id in JSON ... set id to 0
		// this is to force a save of new item ... instead of update
		
		theReservas.setIdMessage(0);
		
		reservasService.save(theReservas);
		
		return theReservas;
	}
	
	// add mapping for PUT /reservass - update existing reservas
	
	@PutMapping("/Reservation")
	public Reservas updateReservas(@RequestBody Reservas theReservas) {
		
		reservasService.save(theReservas);
		
		return theReservas;
	}
	
	// add mapping for DELETE /reservass/{reservasId} - delete reservas
	
	@DeleteMapping("/Reservation/{reservasId}")
	public String deleteReservas(@PathVariable int reservasId) {
		
		Reservas tempReservas = reservasService.findById(reservasId);
		
		// throw exception if null
		
		if (tempReservas == null) {
			throw new RuntimeException("Reservas id not found - " + reservasId);
		}
		
		reservasService.deleteById(reservasId);
		
		return "Deleted reservas id - " + reservasId;
	}
}
