package com.wahkee.fruitStore.controllers.order;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import com.wahkee.fruitStore.security.services.UserDetailsImpl;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.wahkee.fruitStore.models.User;
import com.wahkee.fruitStore.models.order.EOrderStatus;
import com.wahkee.fruitStore.models.order.Order;
import com.wahkee.fruitStore.payload.request.order.OrderRequest;
import com.wahkee.fruitStore.repository.UserRepository;
import com.wahkee.fruitStore.repository.order.OrderRepository;
import com.wahkee.fruitStore.service.OrderService;

@CrossOrigin(origins = "*")
@RestController
@RequestMapping("/api/orders")
public class OrderController {
	
	@Autowired
	OrderService orderService;
	@Autowired
	OrderRepository orderRepository;
	
	@Autowired
	UserRepository userRepository;
	
	@GetMapping("/")
	public ResponseEntity<?> getAllOrders() {
		List<Order> orderList = orderService.getAllOrders();
		return ResponseEntity.ok(orderList);
	}
	
	@GetMapping("/order")
	public ResponseEntity<?> getOneOrder() {
		UserDetailsImpl userDetail = ((UserDetailsImpl)SecurityContextHolder.getContext().getAuthentication().getPrincipal());
	System.out.println("GET EMAIL = "+ 	userDetail.getEmail() + " id = " + userDetail.getId());
	List<Order> paidOrders = orderRepository.findAllByUserIdAndStatus(userDetail.getId(), EOrderStatus.PAID);
	System.out.println(paidOrders);
		 
		return ResponseEntity.ok(paidOrders);
	}
	
	@PostMapping("/add")
	public ResponseEntity<?> addNewOrder(@RequestBody OrderRequest orderRequest) {
		
		System.out.println("ADDING ORDER !");
		UserDetailsImpl userDetail = ((UserDetailsImpl) SecurityContextHolder.getContext().getAuthentication().getPrincipal());
		System.out.println("USER IS ?");
		System.out.println("userDetail = " + userDetail.getEmail());
		
		User user = userRepository.findByEmail(userDetail.getEmail())
			.orElseThrow(() -> new RuntimeException("Error: User is not found !"));
		
		System.out.println("ADD ORDER " + orderRequest.getOrderItems().toString());
		 orderService.addOrder(user,orderRequest);
		 
		return ResponseEntity.ok("SUCCESS");
	}

}
