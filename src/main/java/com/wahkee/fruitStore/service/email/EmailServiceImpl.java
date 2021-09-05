package com.wahkee.fruitStore.service.email;

import org.springframework.amqp.core.AmqpTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.wahkee.fruitStore.models.User;
import com.wahkee.fruitStore.payload.request.others.PortfolioContact;

@Service
public class EmailServiceImpl {
    @Autowired
    private JavaMailSender javaMailSender;
	@Autowired
	private AmqpTemplate amqpTemplate;
	
    public void sendEmail(String exchange, String routingKey, User user) {
    	
    	System.out.println("sending to queue");
    	amqpTemplate.convertAndSend(exchange, routingKey, user);

    }
    
  public void portfolioSendMail(String exchange, String routingKey, PortfolioContact portfolioContact) {
    	
    	System.out.println("portfolioSendMail sending to queue " + portfolioContact.getTitle());
    	amqpTemplate.convertAndSend(exchange, routingKey, portfolioContact);

    }
    
    
}
