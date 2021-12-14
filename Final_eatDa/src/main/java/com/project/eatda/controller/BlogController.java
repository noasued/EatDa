package com.project.eatda.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BlogController {
	private static final Logger logger = LoggerFactory.getLogger(BlogController.class);
	
	@RequestMapping("/blog.do")
	public String blogMain() {
		System.out.println("blog-main page");
		return "/blog/blog-main";
	}
	
	@RequestMapping("/blog-detail.do")
	public String blogDetail() {
		System.out.println("blog-detail page");
		return "/blog/blog-detail";
	}
	
	@RequestMapping("/blog-write.do")
	public String blogWrite() {
		System.out.println("blog-write page");
		return "/blog/blog-write";
	}
	
	@RequestMapping("/blog-update.do")
	public String blogUpdate() {
		System.out.println("blog-update page");
		return "/blog/blog-update";
	}
	


}
