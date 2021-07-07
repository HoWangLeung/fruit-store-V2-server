package com.wahkee.fruitStore.controllers.payment;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.stripe.model.Charge;
import com.wahkee.fruitStore.service.payment.StripeService;
@RestController
@CrossOrigin("*")
@RequestMapping("/api/payment")
public class PaymentGatewayController {
    
    private StripeService stripeService;
    @Autowired
    PaymentGatewayController(StripeService stripeService) {
        this.stripeService = stripeService;
    }
//    @GetMapping("/charge")
//    public Charge chargeCard(@RequestHeader(value="token") String token, @RequestHeader(value="amount") Double amount) throws Exception {
//		
//		System.out.println("token = " + token + " " + " amount = " + amount);
//        return this.stripeService.chargeNewCard(token, amount);
//    }

    @PostMapping("/charge")
    public Charge chargeCard(@RequestHeader(value="token") String token, @RequestHeader(value="amount") Double amount) throws Exception {
		
		System.out.println("token = " + token + " " + " amount = " + amount);
        return this.stripeService.chargeNewCard(token, amount);
    }
	
}