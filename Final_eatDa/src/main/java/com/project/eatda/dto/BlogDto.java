package com.project.eatda.dto;

import java.util.Date;

import org.springframework.stereotype.Component;

@Component
public class BlogDto {
	private String blog_no;
	private String user_id;
	private String blog_title;
	private String blog_content;
	private int blog_count;
	private int blog_like;
	private String blog_img;
	private Date regdate;
	
	public BlogDto() {
		super();
	}
	
	public BlogDto(String blog_no, String user_id, String blog_title, String blog_content, int blog_count,
			int blog_like, String blog_img, Date regdate) {
		super();
		this.blog_no = blog_no;
		this.user_id = user_id;
		this.blog_title = blog_title;
		this.blog_content = blog_content;
		this.blog_count = blog_count;
		this.blog_like = blog_like;
		this.blog_img = blog_img;
		this.regdate = regdate;
	}
	
	public String getBlog_no() {
		return blog_no;
	}
	public void setBlog_no(String blog_no) {
		this.blog_no = blog_no;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getBlog_title() {
		return blog_title;
	}
	public void setBlog_title(String blog_title) {
		this.blog_title = blog_title;
	}
	public String getBlog_content() {
		return blog_content;
	}
	public void setBlog_content(String blog_content) {
		this.blog_content = blog_content;
	}
	public int getBlog_count() {
		return blog_count;
	}
	public void setBlog_count(int blog_count) {
		this.blog_count = blog_count;
	}
	public int getBlog_like() {
		return blog_like;
	}
	public void setBlog_like(int blog_like) {
		this.blog_like = blog_like;
	}
	public String getBlog_img() {
		return blog_img;
	}
	public void setBlog_img(String blog_img) {
		this.blog_img = blog_img;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	@Override
	public String toString() {
		return "BlogDto [blog_no=" + blog_no + ", user_id=" + user_id + ", blog_title=" + blog_title + ", blog_content="
				+ blog_content + ", blog_count=" + blog_count + ", blog_like=" + blog_like + ", blog_img=" + blog_img
				+ ", regdate=" + regdate + "]";
	}
}
