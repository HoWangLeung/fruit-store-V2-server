package com.wahkee.fruitStore.payload.request.product;

import java.util.Map;

import com.wahkee.fruitStore.models.product.LocalizedProduct;

public class NewProductRequest {
	
	public String productName;
	public String img;
	public int price;

	public Map<String, LocalizedProduct> localizations;
	
	
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
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
	public Map<String, LocalizedProduct> getLocalizations() {
		return localizations;
	}
	public void setLocalizations(Map<String, LocalizedProduct> localizations) {
		this.localizations = localizations;
	}
	@Override
	public String toString() {
		return "NewProductRequest [productName=" + productName + ", price=" + price + "]";
	}


	 
	 
	
	
	
	
	
	
	

}
