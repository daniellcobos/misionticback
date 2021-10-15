package com.misiontic.appcitas;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
@EntityScan("com.misiontic.appcitas.entity")
@SpringBootApplication
public class AppcitasApplication {

	public static void main(String[] args) {
		SpringApplication.run(AppcitasApplication.class, args);
	}

}
