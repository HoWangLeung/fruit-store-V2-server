package com.wahkee.fruitStore.repository.order;
import org.springframework.data.jpa.repository.JpaRepository;

import com.wahkee.fruitStore.models.order.OrderItem;

public interface OrderItemsRepository extends JpaRepository<OrderItem,Integer> {
	
}