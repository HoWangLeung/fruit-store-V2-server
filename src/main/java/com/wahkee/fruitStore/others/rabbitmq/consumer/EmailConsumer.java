//package com.wahkee.fruitStore.others.rabbitmq.consumer;
//
//import java.util.UUID;
//
//import org.springframework.amqp.rabbit.annotation.RabbitListener;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.core.env.Environment;
//import org.springframework.mail.SimpleMailMessage;
//import org.springframework.mail.javamail.JavaMailSender;
//import org.springframework.stereotype.Component;
//
//import com.wahkee.fruitStore.models.User;
//import com.wahkee.fruitStore.payload.request.others.PortfolioContact;
//import com.wahkee.fruitStore.service.user.UserService;
//
//@Component
//public class EmailConsumer {
//	@Autowired
//	private JavaMailSender javaMailSender;
//
//	@Autowired
//	private UserService userService;
//	@Autowired
//	private Environment env;
//
//	@RabbitListener(queues = "registrationQueue")
//	public void consumeMessageFromQueue(User user) {
//		String baseUrl = env.getProperty("baseUrl");
//		System.out.println("baseUrl = " + baseUrl);
//		System.out.println("Message recieved from registrationQueue : " + user.getEmail());
//
//		String token = UUID.randomUUID().toString();
//		userService.createVerificationToken(user, token);
//		String recipientAddress = user.getEmail();
//		String subject = "Registration Confirmation";
//		String confirmationUrl = baseUrl + "/api/auth/regitrationConfirm?token=" + token;
//
//		SimpleMailMessage msg = new SimpleMailMessage();
//		msg.setTo(recipientAddress);
//
//		msg.setSubject(subject);
//		msg.setText(confirmationUrl);
//		System.out.println("sending email");
//		javaMailSender.send(msg);
//	}
//
//	@RabbitListener(queues = "portfolioQueue")
//	public void consumeMessageFromPorfolio(PortfolioContact portfolioContact) {
//		System.out.println("comsume");
//		System.out.println("portfolioContact " + portfolioContact.getTitle() + " : " + portfolioContact.getMessage());
//		SimpleMailMessage msg = new SimpleMailMessage();
//		msg.setTo("hkz88i00123@gmail.com");
//
//		msg.setSubject(portfolioContact.getTitle());
//		msg.setText("A message from " + portfolioContact.getEmail() + " : " + portfolioContact.getMessage());
//		System.out.println("sending email");
//		javaMailSender.send(msg);
//
//	}
//
//}
