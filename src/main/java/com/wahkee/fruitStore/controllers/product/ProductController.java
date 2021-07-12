package com.wahkee.fruitStore.controllers.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.wahkee.fruitStore.models.product.Product;
import com.wahkee.fruitStore.repository.product.ProductRepository;
import com.wahkee.fruitStore.service.product.ProductService;

@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping("/api/products")
public class ProductController {
	
	@Autowired
	ProductService productService;
	
	@GetMapping("/")
	public ResponseEntity<?> getAll() {
		System.out.println("RECEIVE");
		List<Product> products = productService.findAll();
	 
		return ResponseEntity.ok(products);
	}

}
