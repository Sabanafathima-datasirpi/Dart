package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * This class represents the main application class for DocApplication.
 */
@SpringBootApplication
public class DemoApplication {
	/**
	 * The entry point for the application.
	 *
	 * @param args Command-line arguments passed to the application.
	 */
	public static void main(String[] args) {
		MyClass myClass = new MyClass();
		SpringApplication.run(DemoApplication.class, args);
		// Call myMethod and store the result
		int result = myClass.myMethod(1, 2);
		// Print the result to the console
		System.out.println("Result of myMethod(): " + result);
		// Start the Spring Boot application
	}
}