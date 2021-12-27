package com.project.eatda.dto;

import org.springframework.stereotype.Component;

@Component
public class OrderProductDto {
	private String order_id;
	private String p_id;
	private int p_count;

	public OrderProductDto() {
		super();
	}

	public OrderProductDto(String order_id, String p_id, int p_count) {
		super();
		this.order_id = order_id;
		this.p_id = p_id;
		this.p_count = p_count;
	}

	public String getOrder_id() {
		return order_id;
	}

	public void setOrder_id(String order_id) {
		this.order_id = order_id;
	}

	public String getP_id() {
		return p_id;
	}

	public void setP_id(String p_id) {
		this.p_id = p_id;
	}

	public int getP_count() {
		return p_count;
	}

	public void setP_count(int p_count) {
		this.p_count = p_count;
	}

	@Override
	public String toString() {
		return "OrderProductDto [order_id=" + order_id + ", p_id=" + p_id + ", p_count=" + p_count + "]";
	}

}
