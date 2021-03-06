package com.wahkee.fruitStore;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;

import com.wahkee.fruitStore.others.binding.AppProperties;
 
@SpringBootApplication
@EnableConfigurationProperties(AppProperties.class)
public class FruitStoreApplication {

	public static void main(String[] args) {
		SpringApplication.run(FruitStoreApplication.class, args);
	}

}
