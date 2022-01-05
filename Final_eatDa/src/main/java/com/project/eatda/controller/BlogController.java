package com.project.eatda.controller;

import java.util.ArrayList;
import java.util.List;

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
import com.project.eatda.dto.BlogDto;

@Controller
public class BlogController {
	private Logger logger = LoggerFactory.getLogger(BlogController.class);

	@Autowired
	private BlogBiz biz;
	
	@Autowired
	private BlogReplyBiz replyBiz;
	
	//블로그 리스트 
	@RequestMapping(value="/takeBlog.do", method=RequestMethod.GET)
	@ResponseBody
	public List<BlogDto> takeBlog(String num) {
		logger.info("take Blog List, num :" + num);
		int page = Integer.parseInt(num);

		List<BlogDto> list = biz.takeBlogList(page);
		for (BlogDto dto : list) {
			System.out.println(dto.toString());
		}
		return list;
	}
	
	//페이징
	@RequestMapping(value="/blog-paging.do", method=RequestMethod.POST)
	@ResponseBody
	public List<Integer> paging() {
		logger.info("paging");

		int count = biz.paging();
		List<Integer> list = new ArrayList<Integer>();
		list.add(count);

		return list;
	}
	
	//블로그 메인
	@RequestMapping("/blog.do")
	public String list() {
		logger.info("Blog list page");
		return "/blog/blog-main2";
	}
	
	// 블로그 검색
	@RequestMapping(value="/blog-search.do", method=RequestMethod.POST)
	@ResponseBody
	public List<BlogDto> search(@RequestBody String keyword) {
		logger.info("search Blog List");
		String search_keyword = keyword.substring(12,keyword.length()-2);
		System.out.println("controller -> search_keyword: "+search_keyword);
		List<BlogDto> list = biz.searchBlog(search_keyword);
		for(BlogDto dto : list) {
			System.out.println(dto.toString());
		}
		return list;
	}

	// 상세 보기
	@RequestMapping("/blog-detail.do")
	public String detail(Model model, int blog_no) {
		logger.info("Blog detail page,");
		System.out.println("blog.do: "+blog_no);
		model.addAttribute("dto", biz.selectOne(blog_no));
		model.addAttribute("list", replyBiz.list(blog_no));
		return "/blog/blog-detail";
	}

	// 글 작성 페이지
	@RequestMapping(value="/blog-writeform.do", method=RequestMethod.GET)
	public String write() {
		logger.info("Blog write form page");
		return "/blog/blog-write";
	}
	//글 작성 결과
	@RequestMapping("/blog-write.do")
	public String write(BlogDto dto) {
		logger.info("Blog write page - post");
		System.out.println(dto.toString());
		biz.insert(dto);
		int blogNo = biz.selectBlogNo(dto.getBlog_title());

		return "redirect:blog-detail.do?blog_no="+blogNo;

	}

	// 글 수정 페이지
	@RequestMapping(value="/blog-updateform.do", method=RequestMethod.GET)
	public String update(Model model, int blog_no) {
		logger.info("Blog update form page");
		System.out.println("update -> "+blog_no);
		BlogDto dto = biz.selectOne(blog_no);
		model.addAttribute("dto",dto);
		System.out.println(dto.toString());
		return "/blog/blog-update";
	}
	// 글 수정 결과
	@RequestMapping(value="/blog-update.do",method=RequestMethod.GET)
	public String update(BlogDto dto) {
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
	
	/* 관리자 블로그 리스트 (전체 조회) */
	@RequestMapping(value="/adminPostBlog.do", method=RequestMethod.GET)
	public String adminBlogList(Model model){
		logger.info("admin blog list");
		model.addAttribute("list", biz.adminBlogList());
		
		return "/admin/adminPostBlog";
	}
	
}
