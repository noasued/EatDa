package com.project.eatda.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BlogController {
	private static final Logger logger = LoggerFactory.getLogger(BlogController.class);
	
	@RequestMapping("/blog.do")
	public String test() {
		System.out.println("test");
		return "/blog/blog-main";
	}
	
	@RequestMapping("/blog-detail.do")
	public String test2() {
		System.out.println("test2");
		return "/blog/blog-detail";
	}
	


}
