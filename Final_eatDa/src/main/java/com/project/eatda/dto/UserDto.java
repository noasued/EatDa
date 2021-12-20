package com.project.eatda.dto;

import org.springframework.stereotype.Component;

@Component
public class UserDto {
	private String user_id;
	private String user_pw;
	private String user_name;
	private String user_addr;
	private String user_email;
	private String user_phone;
	private String user_role;
	private String user_img;
	private String user_penalty;
	private String user_enable;
	private String user_mailing;
	private int cart;

	public UserDto() {
		super();
	}

	public UserDto(String user_id, String user_pw, String user_name, String user_addr, String user_email,
			String user_phone, String user_role, String user_img, String user_penalty, String user_enable,
			String user_mailing, int cart) {
		super();
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_name = user_name;
		this.user_addr = user_addr;
		this.user_email = user_email;
		this.user_phone = user_phone;
		this.user_role = user_role;
		this.user_img = user_img;
		this.user_penalty = user_penalty;
		this.user_enable = user_enable;
		this.user_mailing = user_mailing;
		this.cart = cart;
	}

	public int getCart() {
		return cart;
	}

	public void setCart(int cart) {
		this.cart = cart;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_pw() {
		return user_pw;
	}

	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_addr() {
		return user_addr;
	}

	public void setUser_addr(String user_addr) {
		this.user_addr = user_addr;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getUser_phone() {
		return user_phone;
	}

	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}

	public String getUser_role() {
		return user_role;
	}

	public void setUser_role(String user_role) {
		this.user_role = user_role;
	}

	public String getUser_img() {
		return user_img;
	}

	public void setUser_img(String user_img) {
		this.user_img = user_img;
	}

	public String getUser_penalty() {
		return user_penalty;
	}

	public void setUser_penalty(String user_penalty) {
		this.user_penalty = user_penalty;
	}

	public String getUser_enable() {
		return user_enable;
	}

	public void setUser_enable(String user_enable) {
		this.user_enable = user_enable;
	}

	public String getUser_mailing() {
		return user_mailing;
	}

	public void setUser_mailing(String user_mailing) {
		this.user_mailing = user_mailing;
	}

}
