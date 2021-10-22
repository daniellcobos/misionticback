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
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fasterxml.jackson.annotation.JsonView;
import com.misiontic.appcitas.entity.Doctor;
import com.misiontic.appcitas.entity.view;
import com.misiontic.appcitas.service.DoctorService;



@RestController
@RequestMapping("/api")
@CrossOrigin(origins = "*", methods= {RequestMethod.GET,RequestMethod.POST,RequestMethod.PUT,RequestMethod.DELETE})
public class DoctorRestController {

	private DoctorService doctorService;
	
	@Autowired
	
	public DoctorRestController(DoctorService theDoctorService) {
		doctorService = theDoctorService;
	}
	
	// expose "/doctors" and return list of doctors
	
	@GetMapping("/Doctor/all")
	@JsonView(view.Doctor.class)
	public List<Doctor> findAll() {
		return doctorService.findAll();
	}

	// add mapping for GET /doctors/{doctorId}
	
	@GetMapping("/Doctor/{doctorId}")
	@ResponseStatus(HttpStatus.CREATED)
	public void getDoctor(@PathVariable int doctorId) {
		
		Doctor theDoctor = doctorService.findById(doctorId);
		
		if (theDoctor == null) {
			throw new RuntimeException("Doctor id not found - " + doctorId);
		}
		
		
	}
	
	// add mapping for POST /doctors - add new doctor
	
	@PostMapping("/Doctor/save")
	@ResponseStatus(value = HttpStatus.NO_CONTENT)
	public void addDoctor(@RequestBody Doctor theDoctor) {
		
		// also just in case they pass an id in JSON ... set id to 0
		// this is to force a save of new item ... instead of update
		
		theDoctor.setId(0);
		
		doctorService.save(theDoctor);
		
		
	}
	
	// add mapping for PUT /doctors - update existing doctor
	
	@PutMapping("/Doctor/update")
	public Doctor updateDoctor(@RequestBody Doctor theDoctor) {
		
		doctorService.save(theDoctor);
		
		return theDoctor;
	}
	
	// add mapping for DELETE /doctors/{doctorId} - delete doctor
	
	@DeleteMapping("/doctors/{doctorId}")
	public String deleteDoctor(@PathVariable int doctorId) {
		
		Doctor tempDoctor = doctorService.findById(doctorId);
		
		// throw exception if null
		
		if (tempDoctor == null) {
			throw new RuntimeException("Doctor id not found - " + doctorId);
		}
		
		doctorService.deleteById(doctorId);
		
		return "Deleted doctor id - " + doctorId;
	}
	
}










