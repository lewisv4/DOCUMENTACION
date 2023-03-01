package com.microservicio.alumnos;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;

@EnableEurekaClient
@SpringBootApplication
@EntityScan({"com.microservicio.commons.alumnos.models.entity"})
public class MicroservicioAlumnossApplication {

	public static void main(String[] args) {
		SpringApplication.run(MicroservicioAlumnossApplication.class, args);
	}

}