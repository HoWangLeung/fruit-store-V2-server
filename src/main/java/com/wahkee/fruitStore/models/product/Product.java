package com.wahkee.fruitStore.models.product;

import java.util.HashMap;
import java.util.Map;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MapKey;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

import com.fasterxml.jackson.annotation.JsonManagedReference;

@Entity
@Table(	name = "products")
public class Product {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private int price;
	private String img;

	@OneToMany(mappedBy = "product", cascade = {CascadeType.DETACH, CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH}, orphanRemoval = true)
	@MapKey(name = "localizedId.locale")
	@Cache(usage = CacheConcurrencyStrategy.TRANSACTIONAL)
	private Map<String, LocalizedProduct> localizations = new HashMap<>();
	
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

	public Product(Long id, int price, String img, Map<String, LocalizedProduct> localizations) {
		super();
		this.id = id;
		this.price = price;
		this.img = img;
		this.localizations = localizations;
	}



	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}
	@JsonManagedReference
	public Map<String, LocalizedProduct> getLocalizations() {
		return localizations;
	}

	public void setLocalizations(Map<String, LocalizedProduct> localizations) {
		this.localizations = localizations;
	}
	
	 public String getName(String locale) {
	        return localizations.get(locale).getName();
	    }
	 
 

 
}