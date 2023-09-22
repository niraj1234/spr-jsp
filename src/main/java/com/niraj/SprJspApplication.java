package com.niraj;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages = "com.niraj")
public class SprJspApplication {

	public static void main(String[] args) {
		SpringApplication.run(SprJspApplication.class, args);
	}

}
