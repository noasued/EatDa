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
		logger.info("blog-main (list) page");
		return "/blog/blog-main";
	}
	
	@RequestMapping("/blog-detail.do")
	public String blogDetail() {
		logger.info("blog-detail page");
		return "/blog/blog-detail";
	}
	
	@RequestMapping("/blog-write.do")
	public String blogWrite() {
		logger.info("blog-write page");
		return "/blog/blog-write";
	}
	
	@RequestMapping("/blog-update.do")
	public String blogUpdate() {
		logger.info("blog-update page");
		return "/blog/blog-update";
	}
	


}
