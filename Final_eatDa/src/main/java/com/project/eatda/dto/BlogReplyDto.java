package com.project.eatda.dto;

import java.util.Date;
import org.springframework.stereotype.Component;

@Component
public class BlogReplyDto {
	private int reply_no;
	private int blog_no;
	private String user_id;
	private String reply_content;
	private Date regdate;
	
	public BlogReplyDto() {
		super();
	}
	
	public BlogReplyDto(int reply_no, int blog_no, String user_id, String reply_content, Date regdate) {
		super();
		this.reply_no = reply_no;
		this.blog_no = blog_no;
		this.user_id = user_id;
		this.reply_content = reply_content;
		this.regdate = regdate;
	}
	
	public int getReply_no() {
		return reply_no;
	}
	public void setReply_no(int reply_no) {
		this.reply_no = reply_no;
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
	public String getReply_content() {
		return reply_content;
	}
	public void setReply_content(String reply_content) {
		this.reply_content = reply_content;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
}
