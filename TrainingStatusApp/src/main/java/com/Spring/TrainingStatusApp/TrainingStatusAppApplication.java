package com.Spring.TrainingStatusApp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan("com.Spring.TrainingStatusApp")
public class TrainingStatusAppApplication {

	public static void main(String[] args) {
		SpringApplication.run(TrainingStatusAppApplication.class, args);
	}

}
