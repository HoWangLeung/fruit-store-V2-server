package com.wahkee.fruitStore.models.order;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.wahkee.fruitStore.models.User;

@Entity
@Table(name="orders")
public class Order {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    
    private String refId;
    
    private double finalTotal;

    private Date createdDate;
	@Enumerated(EnumType.STRING)
    private EOrderStatus status;

    @OneToMany(
    	    mappedBy = "order",
    	    cascade = CascadeType.ALL,
    	    orphanRemoval = true
    	)
    private List<OrderItem> orderItems;
    
    @ManyToOne
    private User user;

	public Order() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Order( Date createdDate, EOrderStatus status, List<OrderItem> orderItems, User user) {

		this.createdDate = createdDate;
		this.status = status;
		this.orderItems = orderItems;
		this.user = user;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	
	

	public String getRefId() {
		return refId;
	}

	public void setRefId(String refId) {
		this.refId = refId;
	}

	public double getFinalTotal() {
		return finalTotal;
	}

	public void setFinalTotal(double finalTotal) {
		this.finalTotal = finalTotal;
	}

	public Date getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Date date) {
		this.createdDate = date;
	}

	public EOrderStatus getStatus() {
		return status;
	}

	public void setStatus(EOrderStatus status) {
		this.status = status;
	}
@JsonManagedReference
	public List<OrderItem> getOrderItems() {
		return orderItems;
	}

	public void setOrderItems(List<OrderItem> orderItems) {
		this.orderItems = orderItems;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return "Order [id=" + id + ", finalTotal=" + finalTotal + ", createdDate=" + createdDate + ", status=" + status
				+ "]";
	}

	 
    
    
    
}
