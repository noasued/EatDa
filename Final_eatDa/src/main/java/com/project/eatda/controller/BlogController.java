package com.project.eatda.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.eatda.biz.BlogBiz;

@Controller
public class BlogController {
	private Logger logger = LoggerFactory.getLogger(BlogController.class);
	
	@Autowired
	private BlogBiz biz;
	
	@RequestMapping("/blog.do")
	public String list(Model model) {
		logger.info("Blog list page");
		model.addAttribute("list", biz.blogList());
		return "/blog/blog-main";
	}
	
	@RequestMapping("/blog-detail.do")
	public String detail(Model model, int blog_no) {
		logger.info("Blog detail page");
		model.addAttribute("dto", biz.selectOne(blog_no));
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
