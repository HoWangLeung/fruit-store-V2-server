package com.wahkee.fruitStore.service.payment;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;

import com.stripe.Stripe;
import com.stripe.model.Charge;
import com.stripe.model.Customer;
import com.wahkee.fruitStore.models.order.EOrderStatus;
import com.wahkee.fruitStore.models.order.Order;
import com.wahkee.fruitStore.repository.order.OrderRepository;
import com.wahkee.fruitStore.security.services.UserDetailsImpl;

@Component
public class StripeService {
	@Autowired
	StripeService() {
		Stripe.apiKey = "sk_test_VSPqZxwGfLXAyFZcc0HaAK8600zztVGOji";
	}
	@Autowired
	OrderRepository orderRepository;
	

	public Customer createCustomer(String token, String email) throws Exception {
		Map<String, Object> customerParams = new HashMap<String, Object>();
		customerParams.put("email", email);
		customerParams.put("source", token);
		return Customer.create(customerParams);
	}

	private Customer getCustomer(String id) throws Exception {
		return Customer.retrieve(id);
	}

	public Charge chargeNewCard(String token, double amount) throws Exception {
		Map<String, Object> chargeParams = new HashMap<String, Object>();
		chargeParams.put("amount", (int) (amount * 100));
		chargeParams.put("currency", "HKD");
		chargeParams.put("source", token);
		Charge charge = Charge.create(chargeParams);
		UserDetailsImpl userDetail = ((UserDetailsImpl)SecurityContextHolder.getContext().getAuthentication().getPrincipal());
		System.out.println("USER DETAIL " + userDetail.getId());
		Order order = orderRepository.findAllByUserIdAndStatus(userDetail.getId(), EOrderStatus.PENDING).get(0);
		
		order.setRefId(charge.getId());
		order.setStatus(EOrderStatus.PAID);
		orderRepository.save(order);
		return charge;
	}

	public Charge chargeCustomerCard(String customerId, int amount) throws Exception {
		String sourceCard = getCustomer(customerId).getDefaultSource();
		Map<String, Object> chargeParams = new HashMap<String, Object>();
		chargeParams.put("amount", amount);
		chargeParams.put("currency", "USD");
		chargeParams.put("customer", customerId);
		chargeParams.put("source", sourceCard);
		Charge charge = Charge.create(chargeParams);
		return charge;
	}
}
