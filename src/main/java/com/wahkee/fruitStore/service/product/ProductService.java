package com.wahkee.fruitStore.service.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wahkee.fruitStore.models.product.Product;
import com.wahkee.fruitStore.repository.product.ProductRepository;

@Service
public class ProductService {
	
	
	@Autowired
	ProductRepository productRepository;
	
	public List<Product> findAll() {
		return productRepository.findAll();
	}

}
