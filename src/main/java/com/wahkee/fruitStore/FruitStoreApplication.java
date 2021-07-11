package com.wahkee.fruitStore;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.amqp.RabbitAutoConfiguration;
 
@SpringBootApplication
public class FruitStoreApplication {

	public static void main(String[] args) {
		SpringApplication.run(FruitStoreApplication.class, args);
	}

}
