package com.project.eatda.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.eatda.biz.BlogBiz;
import com.project.eatda.dto.BlogDto;

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
	
	@RequestMapping("/blog-writeform.do")
	public String writeForm() {
		logger.info("Blog write page");
		return "/blog/blog-write";
	}
	
	@RequestMapping("/blog-write.do")
	public String writeRes(BlogDto dto) {
		logger.info("Blog write result");
		int res = biz.insert(dto);
		if(res>0) {
			return "redirect:blog.do";
		} else {
			return "redirect:blog-writeform.do";
		}
	}
	
	@RequestMapping("/blog-updateform.do")
	public String updateForm(Model model, int blog_no) {
		logger.info("Blog update form page");
		model.addAttribute("dto",biz.selectOne(blog_no));
		return "/blog/blog-update";
	}
	
	@RequestMapping("/blog-update.do")
	public String updateForm(BlogDto dto) {
		logger.info("Blog update result");
		int res = biz.update(dto);
		if(res>0) {
			return "redirect:blog-detail.do?blog_no"+dto.getBlog_no();
		} else {
			return "redirect:blog-updateform.do?blog_no"+dto.getBlog_no();
		}
	}
	


}
