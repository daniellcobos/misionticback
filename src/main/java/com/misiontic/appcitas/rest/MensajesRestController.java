package com.misiontic.appcitas.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.annotation.JsonView;
import com.misiontic.appcitas.entity.Mensajes;
import com.misiontic.appcitas.entity.view;
import com.misiontic.appcitas.service.MensajesService;
@RestController
@RequestMapping("/api")
public class MensajesRestController {
private MensajesService mensajesService;
	
	@Autowired
	public MensajesRestController(MensajesService theMensajesService) {
		mensajesService = theMensajesService;
	}
	
	// expose "/mensajess" and return list of mensajess
	
	@GetMapping("/Message/all")
	@JsonView(view.Mensajes.class)
	public List<Mensajes> findAll() {
		return mensajesService.findAll();
	}

	// add mapping for GET /mensajess/{mensajesId}
	
	@GetMapping("/Message/{mensajesId}")
	public Mensajes getMensajes(@PathVariable int mensajesId) {
		
		Mensajes theMensajes = mensajesService.findById(mensajesId);
		
		if (theMensajes == null) {
			throw new RuntimeException("Mensajes id not found - " + mensajesId);
		}
		
		return theMensajes;
	}
	
	// add mapping for POST /mensajess - add new mensajes
	
	@PostMapping("/Message/save")
	@ResponseStatus(value = HttpStatus.NO_CONTENT)
	public void addMensajes(@RequestBody Mensajes theMensajes) {
				
		theMensajes.setIdMessage(0);
		mensajesService.save(theMensajes);
		
		
	}
	
	// add mapping for PUT /mensajess - update existing mensajes
	
	@PutMapping("/Message/update")
	public Mensajes updateMensajes(@RequestBody Mensajes theMensajes) {
		
		mensajesService.save(theMensajes);
		
		return theMensajes;
	}
	
	// add mapping for DELETE /mensajess/{mensajesId} - delete mensajes
	
	@DeleteMapping("/Message/{mensajesId}")
	public String deleteMensajes(@PathVariable int mensajesId) {
		
		Mensajes tempMensajes = mensajesService.findById(mensajesId);
		
		// throw exception if null
		
		if (tempMensajes == null) {
			throw new RuntimeException("Mensajes id not found - " + mensajesId);
		}
		
		mensajesService.deleteById(mensajesId);
		
		return "Deleted mensajes id - " + mensajesId;
	}
}
