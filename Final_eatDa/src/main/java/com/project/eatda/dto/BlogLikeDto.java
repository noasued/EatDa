package com.project.eatda.dto;

public class BlogLikeDto {
	private String user_id;
	private String blog_no;
	
	public BlogLikeDto() {
		super();
	}

	public BlogLikeDto(String user_id, String blog_no) {
		super();
		this.user_id = user_id;
		this.blog_no = blog_no;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getBlog_no() {
		return blog_no;
	}

	public void setBlog_no(String blog_no) {
		this.blog_no = blog_no;
	}

	@Override
	public String toString() {
		return "BlogLikeDto [user_id=" + user_id + ", blog_no=" + blog_no + "]";
	}
	
	
	
	
}
