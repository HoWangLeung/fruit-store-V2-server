package com.wahkee.fruitStore.controllers.product;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.wahkee.fruitStore.models.product.LocalizedId;
import com.wahkee.fruitStore.models.product.LocalizedProduct;
import com.wahkee.fruitStore.models.product.Product;
import com.wahkee.fruitStore.payload.request.product.NewProductRequest;
import com.wahkee.fruitStore.repository.product.ProductRepository;
import com.wahkee.fruitStore.service.product.ProductService;

@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping("/api/products")
public class ProductController {
	
	@Autowired
	ProductRepository productRepository;
	
	@Autowired
	ProductService productService;
	
	@GetMapping("/")
	public ResponseEntity<?> getAll() {
		System.out.println("RECEIVE");
		List<Product> products = productService.findAll();
	 
		return ResponseEntity.ok(products);
	}
	
	@PostMapping("/add")
	public ResponseEntity<?> addNewProduct(@RequestBody NewProductRequest newProductRequest) {
		
		 System.out.println("received request");
		 
		 Map<String, LocalizedProduct> request_localization = newProductRequest.getLocalizations();
		 
		 Product newProduct = new Product();
		 
		 newProduct.setPrice(newProductRequest.getPrice());
		 newProduct.setImg(newProductRequest.getImg());
		 
		 System.out.println(request_localization.get("en").getCountry() + " "+ request_localization  ); 

 
		 
		 newProduct.setLocalizations(request_localization); 
		 newProduct.getLocalizations().get("en").setProduct(newProduct);
		 newProduct.getLocalizations().get("zh").setProduct(newProduct);
		 
		 
		 System.out.println(newProduct.getPrice()); 
		 productRepository.save(newProduct);
	 
		return ResponseEntity.ok("ddd");
	}
	
	
	
	

}




//newProduct.setImg(newProductRequest.getImg());
//newProduct.setPrice(newProductRequest.getPrice());
//
// Map<String, LocalizedProduct> newLocalization = new HashMap<>();
//
//System.out.println("continue..........");
//
//LocalizedProduct newLocalizedProduct_EN = new LocalizedProduct();
//
//newLocalizedProduct_EN.setProduct(newProduct);
//
//
////LocalizedId localizedId_EN = new LocalizedId();
////localizedId_EN.setId(localization.get("en").getLocalizedId().getId());
////localizedId_EN.setLocale(localization.get("zh").getLocalizedId().getLocale());
////newLocalizedProduct_EN.setLocalizedId(localizedId_EN);
////
////LocalizedProduct localized_en = localization.get("en");
////newLocalizedProduct_EN.setProduct(newProduct);
////newLocalizedProduct_EN.setName(localized_en.getName());
////newLocalizedProduct_EN.setCategory(localized_en.getCategory());
////newLocalizedProduct_EN.setCountry(localized_en.getCountry());
////newLocalizedProduct_EN.setCountryCode(localized_en.getCountryCode());
////newLocalizedProduct_EN.setDescription(localized_en.getDescription());
////newLocalizedProduct_EN.setUnit(localized_en.getUnit());
////
//newLocalization.put("en", newLocalizedProduct_EN);
//
////==========
//LocalizedProduct newLocalizedProduct_ZH = new LocalizedProduct();
//newLocalizedProduct_ZH.setProduct(newProduct);
//
////LocalizedId localizedId_ZH = new LocalizedId();
////localizedId_ZH.setId(localization.get("zh").getLocalizedId().getId());
////localizedId_ZH.setLocale(localization.get("zh").getLocalizedId().getLocale());
////newLocalizedProduct_ZH.setLocalizedId(localizedId_ZH);
////
////LocalizedProduct localized_zh = localization.get("zh");
////newLocalizedProduct_ZH.setProduct(newProduct);
////newLocalizedProduct_ZH.setName(localized_zh.getName());
////newLocalizedProduct_ZH.setCategory(localized_zh.getCategory());
////newLocalizedProduct_ZH.setCountry(localized_zh.getCountry());
////newLocalizedProduct_ZH.setCountryCode(localized_zh.getCountryCode());
////newLocalizedProduct_ZH.setDescription(localized_zh.getDescription());
////newLocalizedProduct_ZH.setUnit(localized_zh.getUnit());
//newLocalization.put("zh", newLocalizedProduct_ZH); 
//newProduct.setLocalizations(newProductRequest.getLocalizations());
