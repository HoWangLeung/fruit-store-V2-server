package com.wahkee.fruitStore.service.product;

import java.util.List;

import javax.persistence.EntityManager;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wahkee.fruitStore.models.product.LocalizedId;
import com.wahkee.fruitStore.models.product.LocalizedProduct;
import com.wahkee.fruitStore.models.product.Product;
import com.wahkee.fruitStore.repository.product.ProductRepository;

@Service
public class ProductService {
	
	@Autowired
	EntityManager em;
	@Autowired
	ProductRepository productRepository;
	
	public List<Product> findAll() {
		return productRepository.findAll();
	}
	
	@Transactional
	public void save() {
		Product p = new Product();
		p.setPrice(19);
		 
		LocalizedProduct lpDe = new LocalizedProduct();
		lpDe.setLocalizedId(new LocalizedId("de"));
		lpDe.setProduct(p);
		lpDe.setName("Hibernate Tips - Mehr als 70 Lösungen für typische Hibernateprobleme");
		p.getLocalizations().put("de", lpDe);
		 
		LocalizedProduct lpEn = new LocalizedProduct();
		lpEn.setLocalizedId(new LocalizedId("en"));
		lpEn.setProduct(p);
		lpEn.setName("Hibernate Tips - More than 70 solution to common Hibernate problems");
		p.getLocalizations().put("en", lpEn);
		 
		em.persist(p);
	}
	
	
	public Product getAll() {
		Product p = em.createQuery("SELECT p FROM Product p ", Product.class).getSingleResult();
		
		return p;
	}


}
