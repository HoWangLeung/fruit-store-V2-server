package com.wahkee.fruitStore.controllers.order;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.wahkee.fruitStore.models.order.EOrderStatus;
import com.wahkee.fruitStore.models.order.Order;
import com.wahkee.fruitStore.payload.request.order.OrderRequest;
import com.wahkee.fruitStore.repository.order.OrderRepository;
import com.wahkee.fruitStore.security.services.UserDetailsImpl;
import com.wahkee.fruitStore.service.OrderService;

@CrossOrigin(origins = "*")
@RestController
@RequestMapping("/api/orders")
public class OrderController {
	
	@Autowired
	OrderService orderService;
	@Autowired
	OrderRepository orderRepository;
	
	@GetMapping("/")
	public ResponseEntity<?> getAllOrders() {
		List<Order> orderList = orderService.getAllOrders();
		return ResponseEntity.ok(orderList);
	}
	
	@GetMapping("/order")
	public ResponseEntity<?> getOneOrder() {
		UserDetailsImpl userDetail = ((UserDetailsImpl)SecurityContextHolder.getContext().getAuthentication().getPrincipal());
	System.out.println("GET EMAIL = "+ 	userDetail.getEmail());
	List<Order> paidOrders = orderRepository.findAllByUserIdAndStatus(userDetail.getId(), EOrderStatus.PAID);
	System.out.println(paidOrders.get(0).getRefId());
		 
		return ResponseEntity.ok(paidOrders);
	}
	
	@PostMapping("/add")
	public ResponseEntity<?> addNewOrder(@RequestBody OrderRequest orderRequest) {
		
		System.out.println("ADD ORDER " + orderRequest.getOrderItems().toString());
		 orderService.addOrder(orderRequest);
		 
		return ResponseEntity.ok("SUCCESS");
	}

}
