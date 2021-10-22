package com.misiontic.appcitas.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.annotation.JsonView;
import com.misiontic.appcitas.entity.Cliente;
import com.misiontic.appcitas.entity.view;
import com.misiontic.appcitas.service.ClienteService;

@RestController
@RequestMapping("/api")
@CrossOrigin(origins = "*", methods= {RequestMethod.GET,RequestMethod.POST,RequestMethod.PUT,RequestMethod.DELETE})
public class ClienteRestController {
private ClienteService clienteService;
	
	@Autowired
	public ClienteRestController(ClienteService theClienteService) {
		clienteService = theClienteService;
	}
	
	// expose "/clientes" and return list of clientes
	
	@GetMapping("/Client/all")
	@JsonView(view.Cliente.class)
	public List<Cliente> findAll() {
		return clienteService.findAll();
	}

	// add mapping for GET /clientes/{clienteId}
	
	@GetMapping("/Client/{clienteId}")
	public Cliente getCliente(@PathVariable int clienteId) {
		
		Cliente theCliente = clienteService.findById(clienteId);
		
		if (theCliente == null) {
			throw new RuntimeException("Cliente id not found - " + clienteId);
		}
		
		return theCliente;
	}
	
	// add mapping for POST /clientes - add new cliente
	
	@PostMapping("/Client/save")
	@ResponseStatus(value = HttpStatus.NO_CONTENT)
	public void addCliente(@RequestBody Cliente theCliente) {
		
		// also just in case they pass an id in JSON ... set id to 0
		// this is to force a save of new item ... instead of update
		
		theCliente.setId(0);
		
		clienteService.save(theCliente);
		
		
	}
	
	// add mapping for PUT /clientes - update existing cliente
	
	@PutMapping("/Client/update")
	public Cliente updateCliente(@RequestBody Cliente theCliente) {
		
		clienteService.save(theCliente);
		
		return theCliente;
	}
	
	// add mapping for DELETE /clientes/{clienteId} - delete cliente
	
	@DeleteMapping("/Client/{clienteId}")
	public String deleteCliente(@PathVariable int clienteId) {
		
		Cliente tempCliente = clienteService.findById(clienteId);
		
		// throw exception if null
		
		if (tempCliente == null) {
			throw new RuntimeException("Cliente id not found - " + clienteId);
		}
		
		clienteService.deleteById(clienteId);
		
		return "Deleted cliente id - " + clienteId;
	}
	
}
