package com.in28minutes.springboot.web.controller;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan("com.in28minutes")
public class FirstWebApplication {

	public static void main(String[] args) {
		SpringApplication.run(FirstWebApplication.class, args);
		
	}

}
