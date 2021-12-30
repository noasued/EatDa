package com.project.eatda.dto;

import java.util.Date;

import org.springframework.stereotype.Component;

@Component
public class OrderAdminDto {
	private String order_id;
	private String user_name;
	private Date order_date;
	private String user_phone;
	private String shipping_status;
	private String order_status;
	
	public OrderAdminDto() {
		super();
	}
	
	public OrderAdminDto(String order_id, String user_name, Date order_date, String user_phone, String shipping_status,
			String order_status) {
		super();
		this.order_id = order_id;
		this.user_name = user_name;
		this.order_date = order_date;
		this.user_phone = user_phone;
		this.shipping_status = shipping_status;
		this.order_status = order_status;
	}
	
	public String getOrder_id() {
		return order_id;
	}
	public void setOrder_id(String order_id) {
		this.order_id = order_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public Date getOrder_date() {
		return order_date;
	}
	public void setOrder_date(Date order_date) {
		this.order_date = order_date;
	}
	public String getUser_phone() {
		return user_phone;
	}
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	public String getShipping_status() {
		return shipping_status;
	}
	public void setShipping_status(String shipping_status) {
		this.shipping_status = shipping_status;
	}
	public String getOrder_status() {
		return order_status;
	}
	public void setOrder_status(String order_status) {
		this.order_status = order_status;
	}
}