package com.wahkee.fruitStore.payload.request.order;

import java.util.List;

import com.wahkee.fruitStore.models.order.OrderItem;

public class OrderRequest {
	
	private List<OrderItemRequest> orderItems;

	public List<OrderItemRequest> getOrderItems() {
		return orderItems;
	}

	public void setOrderItems(List<OrderItemRequest> orderItems) {
		this.orderItems = orderItems;
	}

	@Override
	public String toString() {
		return "OrderRequest [orderItems=" + orderItems + "]";
	}
	
	
}
