package com.project.eatda.dto;

import org.springframework.stereotype.Component;

@Component
public class CartProductDto {
	private String user_id;
	private String p_id;
	private int cart_count;
	private int cart_price;

	public CartProductDto() {
		super();
	}

	public CartProductDto(String user_id, String p_id, int cart_count, int cart_price) {
		super();
		this.user_id = user_id;
		this.p_id = p_id;
		this.cart_count = cart_count;
		this.cart_price = cart_price;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getP_id() {
		return p_id;
	}

	public void setP_id(String p_id) {
		this.p_id = p_id;
	}

	public int getCart_count() {
		return cart_count;
	}

	public void setCart_count(int cart_count) {
		this.cart_count = cart_count;
	}

	public int getCart_price() {
		return cart_price;
	}

	public void setCart_price(int cart_price) {
		this.cart_price = cart_price;
	}

	@Override
	public String toString() {
		return "CartProductDto [user_id=" + user_id + ", p_id=" + p_id + ", cart_count=" + cart_count + ", cart_price="
				+ cart_price + "]";
	}

}
