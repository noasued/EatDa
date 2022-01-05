package com.project.eatda.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.eatda.biz.AdminBiz;
import com.project.eatda.biz.BlogBiz;
import com.project.eatda.biz.BlogReplyBiz;
import com.project.eatda.biz.EventBiz;
import com.project.eatda.biz.RecipeBiz;
import com.project.eatda.dto.EventDto;
import com.project.eatda.dto.ProductDto;

@Controller
public class AdminController {
	
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
		System.out.println("adminMain");
		return "/admin/adminMain";
	}

	/* 게시글 댓글 리스트 */
	@RequestMapping(value="/adminPostReply.do", method=RequestMethod.GET)
	public String adminReplyList(Model model){
		System.out.println("admin reply list");
		model.addAttribute("replyList", adminBiz.adminReplyList());

		return "/admin/adminPostReply";
	}
	
	/* 게시글 댓글  선택 삭제 */
	@RequestMapping(value="/adminPostReplyDelete.do", method=RequestMethod.GET)
	public String adminReplyDelete(Model model, HttpServletRequest httpServletRequest){
		System.out.println("admin reply delete");
		
		String[] chk  = httpServletRequest.getParameterValues("RowCheck[]");
		System.out.println(chk);
		String rss = "";
		int chk_l = chk.length;
		System.out.println(chk_l);
		
		for(int i = 0; i < chk_l; i++) {
			System.out.println(chk[i]);
			adminBiz.adminReplyDelete(Integer.parseInt(chk[i]));
		}
		
		return "redirect:/adminPostReply.do";
	}

	/* 블로그 리스트 */
	@RequestMapping("/adminPostBlog.do")
	public String adminPostBlog(Model model) {
		System.out.println("adminPostBlog");
		model.addAttribute("blogList", blogBiz.adminBlogList());

		return "/admin/adminPostBlog";
	}
	
	/* 블로그 선택 삭제 */
	@RequestMapping(value="/adminBlogDelete.do", method=RequestMethod.GET)
	public String adminBlogDelete(Model model, HttpServletRequest httpServletRequest){
		System.out.println("admin blog delete");
		
		String[] chk  = httpServletRequest.getParameterValues("RowCheck[]");
		System.out.println(chk);
		String rss = "";
		int chk_l = chk.length;
		System.out.println(chk_l);
		
		for(int i = 0; i < chk_l; i++) {
			System.out.println(chk[i]);
			adminBiz.adminBlogDelete(Integer.parseInt(chk[i]));
		}
		
		return "redirect:/adminPostBlog.do";
	}


	/* 이벤트 리스트 */
	@RequestMapping("/adminPostEvent.do")
	public String adminPostEvent(Model model) {
		System.out.println("adminPostEvent");
		model.addAttribute("eventList", eventBiz.eventList());

		return "/admin/adminPostEvent";
	}

	// 이벤트 status update
	@RequestMapping(value="/adminEventStaus.do",method=RequestMethod.GET)
	public String updateStatus(EventDto dto) {
		System.out.println(dto.toString());
		//eventBiz.adminEventStatus(dto);
		
		return "redirect:/adminPostEvent.do";
	}

	/* 레시피 리스트 */
	@RequestMapping("/adminRecipe.do")
	public String adminRecipe(Model model) {
		System.out.println("adminRecipe");
		model.addAttribute("recipeList", recipeBiz.recipeList());

		return "/admin/adminRecipe";
	}
	
	// 레시피 삭제
	/*
	 * @RequestMapping(value="/adminRecipeDelete.do", method=RequestMethod.GET)
	 * public String adminRecipeDelete(Model model, HttpServletRequest
	 * httpServletRequest){ System.out.println("admin blog delete");
	 * 
	 * String[] chk = httpServletRequest.getParameterValues("RowCheck[]");
	 * System.out.println(chk); String rss = ""; int chk_l = chk.length;
	 * System.out.println(chk_l);
	 * 
	 * for(int i = 0; i < chk_l; i++) { System.out.println(chk[i]);
	 * adminBiz.adminRecipeDelete(Integer.parseInt(chk[i])); }
	 * 
	 * return "redirect:/adminPostBlog.do";
	 
	}*/
	

	/* 상품 리스트 */
	@RequestMapping("/adminProductList.do")
	public String adminProductList(Model model) {
		System.out.println("admin product list");
		model.addAttribute("productList", adminBiz.adminProductList());
		
		return "/admin/adminProductList";
	}

	// 상품 등록 페이지
	@RequestMapping("/adminProductWriteForm.do")
	public String p_write() {
		System.out.println("admin product write");
		
		return "/admin/adminProductWrite";
	}
	
	// 상품 등록 후 리스트
	@RequestMapping("/adminProductWrite.do")
	public String p_insert(ProductDto dto, RedirectAttributes rttr) {
		System.out.println("product write page - post");
		System.out.println(dto.toString());
		adminBiz.p_insert(dto);
		
		rttr.addFlashAttribute("insert_result", dto.getP_id());
		
		return "redirect:/admin/adminProductList";
	}

	
	// 상품 수정 페이지
	@RequestMapping("p_update.do")
	public int p_update(ProductDto dto) {
		
		return 0;
	}
	
	// 상품 삭제 페이지
	@RequestMapping("adminProductDelete.do")
	public String p_delete(String p_id) {
		System.out.println("admin product delete");
		adminBiz.p_delete(p_id);
		return "redirect:adminProductList.do";
	}

	
	
	/* 주문 리스트 */
	@RequestMapping(value="/adminOrder.do", method=RequestMethod.GET)
	public String adminOrder(Model model) {
		System.out.println("adminOrder");
		model.addAttribute("orderList", adminBiz.adminOrderList());
		
		return "/admin/adminOrder";
	}
	
	// 주문 삭제
	/*
	 * @RequestMapping(value="/adminOrderDelete.do", method=RequestMethod.GET)
	 * public String adminOrderDelete(Model model, HttpServletRequest
	 * httpServletRequest){ System.out.println("admin blog delete");
	 * 
	 * String[] chk = httpServletRequest.getParameterValues("RowCheck[]");
	 * System.out.println(chk); String rss = ""; int chk_l = chk.length;
	 * System.out.println(chk_l);
	 * 
	 * for(int i = 0; i < chk_l; i++) { System.out.println(chk[i]);
	 * adminBiz.adminOrderDelete(Integer.parseInt(chk[i])); }
	 * 
	 * return "redirect:/adminPostBlog.do"; }
	 */
	/* 회원 리스트 */
	@RequestMapping("/adminUser.do")
	public String adminUser(Model model) {
		System.out.println("adminUser");
		model.addAttribute("userList", adminBiz.adminUserList());

		return "/admin/adminUser";
	}
	
	@RequestMapping("/adminUpdateUserEnable.do")
	public int updateUserEnable(Model model, String user_id) {
		System.out.println("update user enable");
		
		return 0;
	}

	/* 신고 리스트 */
	@RequestMapping(value="/adminReport.do", method=RequestMethod.GET)
	public String adminReport(Model model) {
		System.out.println("admin report list");
		model.addAttribute("reportList", adminBiz.adminReportList());
		
		return "/admin/adminReport";
	}
	
	/* 신고 삭제 */
	@RequestMapping(value="/adminPostReportDelete.do", method=RequestMethod.GET)
	public String adminPostReportDelete(Model model, HttpServletRequest httpServletRequest){
		System.out.println("admin reply delete");
		
		String[] chk  = httpServletRequest.getParameterValues("RowCheck[]");
		System.out.println(chk);
		String rss = "";
		int chk_l = chk.length;
		System.out.println(chk_l);
		
		for(int i = 0; i < chk_l; i++) {
			System.out.println(chk[i]);
			adminBiz.adminPostReportDelete(Integer.parseInt(chk[i]));
		}
		
		return "redirect:/adminPostReply.do";
	}
}
