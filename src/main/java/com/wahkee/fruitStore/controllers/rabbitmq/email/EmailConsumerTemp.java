package com.wahkee.fruitStore.controllers.rabbitmq.email;

import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.stereotype.Component;

 

@Component
public class EmailConsumerTemp {

    @RabbitListener(queues = "adminQueue")
    public void consumeMessageFromQueue(String message) {
        System.out.println("Message recieved from queue : " + message);
    }
}
