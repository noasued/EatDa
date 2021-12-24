package com.project.eatda.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.eatda.biz.BlogBiz;
import com.project.eatda.dto.BlogDto;

@Controller
public class BlogController {
	private Logger logger = LoggerFactory.getLogger(BlogController.class);
	
	@Autowired
	private BlogBiz biz;
	
	// 블로그 메인 겸 리스트
	@RequestMapping("/blog.do")
	public String list(Model model) {
		logger.info("Blog list page");
		model.addAttribute("list", biz.blogList());
		return "/blog/blog-main";
	}
	
	// 상세 보기
	@RequestMapping("/blog-detail.do")
	public String detail(Model model, int blog_no) {
		logger.info("Blog detail page");
		System.out.println("blog.do: "+blog_no);
		model.addAttribute("dto", biz.selectOne(blog_no));
		return "/blog/blog-detail";
	}
	
	// 글 작성 페이지
	@RequestMapping(value="/blog-writeform.do", method=RequestMethod.GET)
	public String write() {
		logger.info("Blog write form page");
		return "/blog/blog-write";
	}
	
	@RequestMapping("/blog-write.do")
	public String write(BlogDto dto) {
		logger.info("Blog write page - post");
		System.out.println(dto.toString());
		biz.insert(dto);
		int blogNo = biz.selectBlogNo(dto.getBlog_title());
		
		return "redirect:blog-detail.do?blog_no="+blogNo;
		
	}
	
	// 글 수정
	@RequestMapping(value="/blog-updateform.do", method=RequestMethod.GET)
	public String updateForm(Model model, int blog_no) {
		logger.info("Blog update form page");
		System.out.println("update -> "+blog_no);
		model.addAttribute("dto",biz.selectOne(blog_no));
		return "/blog/blog-update";
	}
	
	@RequestMapping("/blog-update.do")
	public String updateForm(BlogDto dto) {
		logger.info("Blog update result - post");
		System.out.println(dto.toString());
		biz.update(dto);
		
		return "redirect:blog-detail.do?blog_no="+dto.getBlog_no();
		
	}
	
	// 글 삭제
	@RequestMapping(value="/blog-delete.do", method=RequestMethod.GET)
	public String delete(int blog_no) {
		logger.info("Blog delete");
		biz.delete(blog_no);
		return "redirect:blog.do";
	}

}
