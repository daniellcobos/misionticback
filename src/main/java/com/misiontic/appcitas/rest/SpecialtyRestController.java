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
import com.misiontic.appcitas.entity.Specialty;
import com.misiontic.appcitas.entity.view;
import com.misiontic.appcitas.service.SpecialtyService;


@RestController
@RequestMapping("/api")
@CrossOrigin(origins = "*", methods= {RequestMethod.GET,RequestMethod.POST,RequestMethod.PUT,RequestMethod.DELETE})
public class SpecialtyRestController {
private SpecialtyService specialtyService;
	
	@Autowired
	public SpecialtyRestController(SpecialtyService theSpecialtyService) {
		specialtyService = theSpecialtyService;
	}
	
	// expose "/specialties" and return list of specialties
	@GetMapping("/Specialty/all")
	@JsonView(view.Specialty.class)
	public List<Specialty> findAll() {
		return specialtyService.findAll();
	}

	// add mapping for GET /specialties/{specialtyId}
	
	@GetMapping("/Specialty/{specialtyId}")
	public Specialty getSpecialty(@PathVariable int specialtyId) {
		
		Specialty theSpecialty = specialtyService.findById(specialtyId);
		
		if (theSpecialty == null) {
			throw new RuntimeException("Specialty id not found - " + specialtyId);
		}
		
		return theSpecialty;
	}
	
	// add mapping for POST /specialties - add new specialty
	@ResponseStatus(HttpStatus.CREATED)
	@PostMapping("/Specialty/save")
	public void addSpecialty(@RequestBody Specialty theSpecialty) {
		
		// also just in case they pass an id in JSON ... set id to 0
		// this is to force a save of new item ... instead of update
		
		theSpecialty.setId(0);
		
		specialtyService.save(theSpecialty);
		
	
	}
	
	// add mapping for PUT /specialties - update existing specialty
	
	@PutMapping("/Specialty/update")
	@ResponseStatus(HttpStatus.CREATED)
	public Specialty updateSpecialty(@RequestBody Specialty theSpecialty) {
		
		specialtyService.save(theSpecialty);
		
		return theSpecialty;
	}
	
	// add mapping for DELETE /specialties/{specialtyId} - delete specialty
	
	@DeleteMapping("/specialties/{specialtyId}")
	public String deleteSpecialty(@PathVariable int specialtyId) {
		
		Specialty tempSpecialty = specialtyService.findById(specialtyId);
		
		// throw exception if null
		
		if (tempSpecialty == null) {
			throw new RuntimeException("Specialty id not found - " + specialtyId);
		}
		
		specialtyService.deleteById(specialtyId);
		
		return "Deleted specialty id - " + specialtyId;
	}
}
