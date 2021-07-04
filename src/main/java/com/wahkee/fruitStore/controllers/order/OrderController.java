package com.wahkee.fruitStore.controllers.order;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.wahkee.fruitStore.models.order.Order;
import com.wahkee.fruitStore.payload.request.order.OrderRequest;
import com.wahkee.fruitStore.service.OrderService;

@CrossOrigin(origins = "*")
@RestController
@RequestMapping("/api/orders")
public class OrderController {
	
	@Autowired
	OrderService orderService;
	
	@GetMapping("/")
	public ResponseEntity<?> getAllOrders() {
		List<Order> orderList = orderService.getAllOrders();
		return ResponseEntity.ok(orderList);
	}
	
	@PostMapping("/add")
	public ResponseEntity<?> addNewOrder(@RequestBody OrderRequest orderRequest) {
		
		System.out.println("ADD ORDER " + orderRequest.getOrderItems().toString());
		 orderService.addOrder(orderRequest);
		 
		return ResponseEntity.ok("SUCCESS");
	}

}
