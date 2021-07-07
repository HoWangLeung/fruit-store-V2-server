package com.wahkee.fruitStore.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.wahkee.fruitStore.models.User;
import com.wahkee.fruitStore.models.order.EOrderStatus;
import com.wahkee.fruitStore.models.order.Order;
import com.wahkee.fruitStore.models.order.OrderItem;
import com.wahkee.fruitStore.models.product.Product;
import com.wahkee.fruitStore.payload.request.order.OrderRequest;
import com.wahkee.fruitStore.repository.UserRepository;
import com.wahkee.fruitStore.repository.order.OrderRepository;

@Service
public class OrderService {
	double sum;

	@Autowired
	private OrderRepository orderRepository;

	@Autowired
	EntityManager em;

	@Autowired
	OrderItemsService orderItemsService;
	
	@Autowired
	private UserRepository userRepository;
 

	public List<Order> getOrderById(int user_id) {
		List<Order> orderList = orderRepository.findAllByUserIdOrderByCreatedDateDesc(user_id);
		return orderList;
	}

	public List<Order> getAllOrders() {
		List<Order> orderList = orderRepository.findAll();
		return orderList;
	}

	public void addOrder(OrderRequest orderRequest) {
		sum = 0;
 	User user = userRepository.findByEmail("hkz88i00123@gmail.com")
 			.orElseThrow(() -> new UsernameNotFoundException("User Not Found with email:  =>>>>>" ));
 			
 			
		List<Order> existingPendingOrder = orderRepository.findAllByUserIdAndStatus(user.getId(), EOrderStatus.PENDING);
		List<OrderItem> orderItems = new ArrayList<OrderItem>();

		if (existingPendingOrder.size() == 1) {
			// ===================================================================
			// IF USER ALREADY HAS A PENDING ORDER THEN JUST UPDATE EXISTING ORDER
			// ====================================================================
			Order existingOrder = existingPendingOrder.get(0);

			orderRequest.getOrderItems().stream().forEach(e -> {
				sum += e.getTotal();
				Product product = em.find(Product.class, e.getProductId());
				OrderItem orderItem = new OrderItem(e.getQuantity(), e.getPrice(), new Date(), product);
				orderItem.setOrder(existingOrder);
				orderItems.add(orderItem);
			});
			existingOrder.setFinalTotal(sum);
			existingOrder.getOrderItems().clear();
			existingOrder.getOrderItems().addAll(orderItems);
		
			orderRepository.save(existingOrder);

		} else {
			// ===================================================================
			// IF USER DOES NOT HAVE EXISTING ORDER, THEN CREATE NEW
			// ====================================================================
			System.out.println("==================CREATING NEW ORDER=========================");
			Order newOrder = new Order();
			newOrder.setUser(user);
			newOrder.setStatus(EOrderStatus.PENDING);
	
			newOrder.setCreatedDate(new Date());
	 
			orderRequest.getOrderItems().stream().forEach(e -> {
				sum += e.getTotal();
				Product product = em.find(Product.class, e.getProductId());
			
				OrderItem orderItem = new OrderItem(e.getQuantity(), e.getPrice(), new Date(), product);
				orderItem.setOrder(newOrder);
				orderItem.setProduct(product);
				System.out.println("WHIT IS THIS PRODUCT = " + orderItem.getProduct().getName() );
//				System.out.println();
				orderItems.add(orderItem); 
			});
			newOrder.setOrderItems(orderItems);
			newOrder.setFinalTotal(sum);
			orderRepository.save(newOrder);
		}

	}

}