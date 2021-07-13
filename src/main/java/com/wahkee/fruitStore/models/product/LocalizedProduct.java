package com.wahkee.fruitStore.models.product;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

import com.fasterxml.jackson.annotation.JsonBackReference;

@Entity
@Cache(usage = CacheConcurrencyStrategy.TRANSACTIONAL)
public class LocalizedProduct {
 
    @EmbeddedId
    private LocalizedId localizedId;
     
    @ManyToOne
    @MapsId("id")
    @JoinColumn(name = "id")
    private Product product;
     
    private String name;
    
    private String category;
    
    private String country;
    
    private String unit;

	public LocalizedProduct() {
		super();
		// TODO Auto-generated constructor stub
	}

	public LocalizedProduct(LocalizedId localizedId, Product product, String name, String category, String country,
			String unit) {
		super();
		this.localizedId = localizedId;
		this.product = product;
		this.name = name;
		this.category = category;
		this.country = country;
		this.unit = unit;
	}

	public LocalizedId getLocalizedId() {
		return localizedId;
	}

	public void setLocalizedId(LocalizedId localizedId) {
		this.localizedId = localizedId;
	}
	@JsonBackReference
	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getUnit() {
		return unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}
 
 
     
}
