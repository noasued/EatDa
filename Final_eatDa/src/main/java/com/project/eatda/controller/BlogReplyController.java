package com.project.eatda.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.eatda.biz.BlogReplyBiz;
import com.project.eatda.dto.BlogReplyDto;

@Controller
public class BlogReplyController {
	private Logger logger = LoggerFactory.getLogger(BlogReplyController.class);
	
	@Autowired
	private BlogReplyBiz replyBiz;
	
	// 댓글 입력
	@RequestMapping("reply-insert.do")
	public void insert(@ModelAttribute BlogReplyDto dto, HttpSession session) {
		logger.info("[controller] reply insert");
		String userId = (String) session.getAttribute("user_id");
		dto.setUser_id(userId);
		replyBiz.insert(dto);
	}
	
	// 댓글 목록(controller 방식)
//	@RequestMapping("/reply/reply-list.do")
//	public ModelAndView list(@RequestParam int blog_no, ModelAndView mav) {
//		List<BlogReplyDto> list = replyBiz.list(blog_no);
//		// set view name
//		mav.setViewName("blog/reply-list");
//		// set data send to view
//		mav.addObject("reply-list",list);
//		// forward to reply-list.jsp ??
//		return mav;
//	}
	
	// 댓글 목록 (RestController json방식)
	@RequestMapping("reply-list.do")
	@ResponseBody
	public List<BlogReplyDto> list(@RequestParam int blog_no){
		logger.info("[controller] reply list of blog : "+blog_no);
		List<BlogReplyDto> list = replyBiz.list(blog_no);
		return list;
	}
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
