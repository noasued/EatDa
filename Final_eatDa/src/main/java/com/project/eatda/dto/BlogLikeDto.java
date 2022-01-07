package com.project.eatda.dto;

import org.springframework.stereotype.Component;

@Component
public class BlogLikeDto {
	private int like_no;
	private int blog_no;
	private String user_id;
	private int like_check;
	
	public BlogLikeDto() {
		super();
	}
	
	public BlogLikeDto(int like_no, int blog_no, String user_id, int like_check) {
		super();
		this.like_no = like_no;
		this.blog_no = blog_no;
		this.user_id = user_id;
		this.like_check = like_check;
	}
	
	public int getLike_no() {
		return like_no;
	}
	public void setLike_no(int like_no) {
		this.like_no = like_no;
	}
	public int getBlog_no() {
		return blog_no;
	}
	public void setBlog_no(int blog_no) {
		this.blog_no = blog_no;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public int getLike_check() {
		return like_check;
	}
	public void setLike_check(int like_check) {
		this.like_check = like_check;
	}
	
	@Override
	public String toString() {
		return "BlogLikeDto [like_no=" + like_no + ", blog_no=" + blog_no + ", user_id=" + user_id + ", like_check="
				+ like_check + "]";
	}
	
	
}
