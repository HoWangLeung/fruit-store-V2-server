package com.wahkee.fruitStore.service.email;

import org.springframework.amqp.core.AmqpTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.wahkee.fruitStore.models.User;

@Service
public class EmailServiceImpl {
    @Autowired
    private JavaMailSender javaMailSender;
	@Autowired
	private AmqpTemplate amqpTemplate;
	
    public void sendEmail(String exchange, String routingKey, User user) {
    	
    	System.out.println("sending to queue");
    	amqpTemplate.convertAndSend(exchange, routingKey, user);

//        SimpleMailMessage msg = new SimpleMailMessage();
//        msg.setTo("hkz88i00123@gmail.com");
//
//        msg.setSubject("Testing from Spring Boot");
//        msg.setText("Hello World \n Spring Boot Email");
//System.out.println("sending email");
//        javaMailSender.send(msg);

    }
}
