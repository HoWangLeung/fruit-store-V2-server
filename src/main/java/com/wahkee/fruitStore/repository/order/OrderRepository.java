package com.wahkee.fruitStore.repository.order;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.wahkee.fruitStore.models.order.EOrderStatus;
import com.wahkee.fruitStore.models.order.Order;

@Repository
public interface OrderRepository  extends JpaRepository<Order, Integer> {
   
    List<Order> findAllByUserIdAndStatus(Long userId,EOrderStatus status);//may be useless because of clear db
    List<Order> findAllByUserIdOrderByCreatedDateDesc(Integer userId);//may be useless because of clear db
  
//    List<Order> findAllByEmailOrderByCreatedDateDesc(Integer userId);
//    List<Order> findAllByEmailAndStatus(String email,EOrderStatus status);
}
