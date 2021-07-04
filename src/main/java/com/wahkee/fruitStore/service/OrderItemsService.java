package com.wahkee.fruitStore.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wahkee.fruitStore.models.order.OrderItem;
import com.wahkee.fruitStore.repository.order.OrderItemsRepository;

@Service
@Transactional
public class OrderItemsService {

	   @Autowired
	    private OrderItemsRepository orderItemsRepository;
	   
	   public void addOrderedProducts(OrderItem orderItem) {
	        orderItemsRepository.save(orderItem);
	    }
	   
	   

}
