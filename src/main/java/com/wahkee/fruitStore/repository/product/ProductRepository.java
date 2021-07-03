package com.wahkee.fruitStore.repository.product;

import org.springframework.data.jpa.repository.JpaRepository;

import com.wahkee.fruitStore.models.product.Product;

public interface ProductRepository extends JpaRepository<Product, Long> {

}
