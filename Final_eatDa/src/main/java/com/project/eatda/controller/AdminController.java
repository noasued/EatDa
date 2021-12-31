package com.project.eatda.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.eatda.biz.AdminBiz;
import com.project.eatda.biz.BlogBiz;
import com.project.eatda.biz.BlogReplyBiz;
import com.project.eatda.biz.EventBiz;
import com.project.eatda.biz.RecipeBiz;
import com.project.eatda.dto.EventDto;
import com.project.eatda.dto.ProductDto;

@Controller
public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	AdminBiz adminBiz;
	
	@Autowired
	BlogBiz blogBiz;
	
	@Autowired
	BlogReplyBiz replyBiz;
	
	@Autowired
	EventBiz eventBiz;

	@Autowired
	RecipeBiz recipeBiz;
	
	/* 관리자 메인 */
	@RequestMapping("/adminMain.do")
	public String admin1() {
		logger.info("adminMain");
		return "/admin/adminMain";
	}

	/* 게시글 댓글 관리 */
	@RequestMapping(value="/adminPostReply.do", method=RequestMethod.GET)
	public String adminReplyList(Model model){
		logger.info("admin reply list");
		model.addAttribute("replyList", adminBiz.adminReplyList());

		return "/admin/adminPostReply";
	}

	/* 블로그 관리 */
	@RequestMapping("/adminPostBlog.do")
	public String adminPostBlog(Model model) {
		logger.info("adminPostBlog");
		model.addAttribute("blogList", blogBiz.adminBlogList());

		return "/admin/adminPostBlog";
	}

	/* 이벤트 관리 */
	@RequestMapping("/adminPostEvent.do")
	public String adminPostEvent(Model model) {
		logger.info("adminPostEvent");
		model.addAttribute("eventList", eventBiz.eventList());

		return "/admin/adminPostEvent";
	}

	// 이벤트 status update
	@RequestMapping("/adminEventStaus.do")
	public String updateStatus(EventDto dto, String status) {
		System.out.println(status);

		return "/admin/adminPostEvent";
	}

	/* 레시피 관리 */
	@RequestMapping("/adminRecipe.do")
	public String adminRecipe(Model model) {
		logger.info("adminRecipe");
		model.addAttribute("recipeList", recipeBiz.recipeList());

		return "/admin/adminRecipe";
	}

	/* 상품 관리 */
	@RequestMapping(value="/adminProduct.do", method=RequestMethod.GET)
	public String adminProductList(Model model) {
		logger.info("admin product list");
		model.addAttribute("productList", adminBiz.adminProductList());
		
		return "/admin/adminProduct";
	}

	// 상품 등록 페이지
	@RequestMapping("/adminProductWrite.do")
	public String p_write() {
		logger.info("admin product write");
		
		return "/admin/adminProductWrite";
	}
	
	@RequestMapping("p_insert.do")
	public int p_insert(ProductDto dto) {
		return 0;
	}

	/* 주문 관리 */
	@RequestMapping(value="/adminOrder.do", method=RequestMethod.GET)
	public String adminOrder(Model model) {
		logger.info("adminOrder");
		model.addAttribute("orderList", adminBiz.adminOrderList());
		
		return "/admin/adminOrder";
	}

	/* 회원 관리 */
	@RequestMapping("/adminUser.do")
	public String adminUser(Model model) {
		logger.info("adminUser");
		model.addAttribute("userList", adminBiz.adminUserList());

		return "/admin/adminUser";
	}

	/* 신고 관리 */
	@RequestMapping(value="/adminReport.do", method=RequestMethod.GET)
	public String adminReport(Model model) {
		logger.info("admin report list");
		model.addAttribute("reportList", adminBiz.adminReportList());
		
		return "/admin/adminReport";
	}

}
