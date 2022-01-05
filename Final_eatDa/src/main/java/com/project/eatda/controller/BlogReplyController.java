package com.project.eatda.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.eatda.biz.BlogBiz;
import com.project.eatda.biz.BlogReplyBiz;
import com.project.eatda.dto.BlogReplyDto;
import com.project.eatda.dto.UserDto;

@Controller
public class BlogReplyController {
	private Logger logger = LoggerFactory.getLogger(BlogReplyController.class);
	
	@Autowired
	private BlogReplyBiz replyBiz;
	
	@Autowired
	private BlogBiz blogBiz;
	
	@RequestMapping(value="/reply-insert.do", method=RequestMethod.POST) 
	@ResponseBody
	public List<BlogReplyDto> insert(@RequestBody String param, HttpServletRequest request) {
		logger.info("paging, param: " + param);

		String[] temp = param.split("&");
		
		String reply_content = temp[0].substring(14, temp[0].length());
		String blog_no = temp[1].substring(8, temp[1].length());
		UserDto user = (UserDto)request.getSession().getAttribute("member");
		
		BlogReplyDto dto = new BlogReplyDto();
		dto.setUser_id(user.getUser_id());
		dto.setBlog_no(Integer.parseInt(blog_no));
		dto.setReply_content(reply_content);
		
		System.out.println(dto.toString());
		
		int res = replyBiz.insert(dto);
		List<BlogReplyDto> list = new ArrayList<BlogReplyDto>();
		
		list.add(dto);
		
		return list;
	}
	
	@RequestMapping(value="/reply-update.do", method=RequestMethod.GET)
	public String update(Model model, int reply_no) {
		logger.info("[controller] reply update ");
		BlogReplyDto dto = replyBiz.selectOne(reply_no);
		model.addAttribute("dto",dto);
		System.out.println(dto.toString());
		
		replyBiz.update(dto);
		
		return "redirect:blog-detail.do?blog_no="+dto.getBlog_no();
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
