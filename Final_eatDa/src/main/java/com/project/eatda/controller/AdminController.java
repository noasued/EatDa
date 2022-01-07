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
	
	// 댓글 삭제
	@RequestMapping(value="/adminPostReplyDelete.do", method=RequestMethod.GET)
	public String adminReplyDelete(Model model, HttpServletRequest httpServletRequest){
		System.out.println("admin reply delete");
		
		String[] chk  = httpServletRequest.getParameterValues("RowCheck[]");
		System.out.println(chk);
		int chk_length = chk.length;
		System.out.println(chk_length);
		
		for(int i = 0; i < chk_length; i++) {
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

	/* 이벤트 리스트 */
	@RequestMapping("/adminPostEvent.do")
	public String adminPostEvent(Model model) {
		System.out.println("adminPostEvent");
		model.addAttribute("eventList", eventBiz.eventList());

		return "/admin/adminPostEvent";
	}

	// 이벤트 status update

//	@RequestMapping(value="/adminEventStaus.do",method=RequestMethod.GET)
//	public String updateStatus(EventDto dto) {
//		System.out.println(dto.toString());
//		//eventBiz.adminEventStatus(dto);
//		
//		return "redirect:/adminPostEvent.do";
//	}


	/* 레시피 리스트 */
	@RequestMapping("/adminRecipe.do")
	public String adminRecipe(Model model) {
		System.out.println("adminRecipe");
		model.addAttribute("recipeList", recipeBiz.recipeList());

		return "/admin/adminRecipe";
	}
	
	/* 상품 리스트 */
	@RequestMapping("/adminProductList.do")
	public String adminProductList(Model model) {
		System.out.println("admin product list");
		model.addAttribute("productList", adminBiz.adminProductList());
		
		return "/admin/adminProductList";
	}

	// 상품 등록 버튼 클릭 시, writeForm으로 페이지 이동
	@RequestMapping("/adminProductWrite.do")
	public String adminProductWrite() {
		System.out.println("admin product write");
		
		return "/admin/adminProductWrite";
	}
	
	// 상품 등록
	@RequestMapping("/adminProductInsert.do")
	public String adminProductInsert(ProductDto dto,Model model) {
		System.out.println("product insert");
		System.out.println(dto.toString());
		adminBiz.adminProductInsert(dto);
		
		model.addAttribute("insert_result", dto.getP_id());
		
		return "redirect:/adminProductList.do";
	}

	
	// 상품 수정
	@RequestMapping("adminProductUpdate.do")
	public String adminProductUpdate(Model model, String p_id) {
		System.out.println("admin product update");
		
		return "/admin/adminProductUpdate";
	}
	
	// 상품 삭제
	@RequestMapping("/adminProductDelete.do")
	public String adminProductDelete(Model model, HttpServletRequest httpServletRequest){
		System.out.println("admin product delete");
		
		String[] chk  = httpServletRequest.getParameterValues("RowCheck[]");
		System.out.println(chk);
		int chk_l = chk.length;
		System.out.println(chk_l);
		
		for(int i = 0; i < chk_l; i++) {
			System.out.println(chk[i]);
			adminBiz.adminProductDelete(chk[i]);
		}
		
		return "redirect:/adminProductList.do";
	}

	/* 주문 리스트 */
	@RequestMapping(value="/adminOrder.do", method=RequestMethod.GET)
	public String adminOrder(Model model) {
		System.out.println("adminOrder");
		model.addAttribute("orderList", adminBiz.adminOrderList());
		
		return "/admin/adminOrder";
	}
	
	// 주문 삭제
	 @RequestMapping(value="/adminOrderDelete.do", method=RequestMethod.GET)
	 public String adminOrderDelete(Model model, HttpServletRequest httpServletRequest){ 
		System.out.println("admin blog delete");
		
	 	String[] chk = httpServletRequest.getParameterValues("RowCheck[]");
	 	System.out.println(chk); 
	 	int chk_l = chk.length;
	 	System.out.println(chk_l);
	  
		for(int i = 0; i < chk_l; i++) { 
			System.out.println(chk[i]);
		 	adminBiz.adminOrderDelete(chk[i]); 
		 }
	 
	 return "redirect:/adminOrder.do"; 
	 }

	/* 회원 리스트 */
	@RequestMapping("/adminUser.do")
	public String adminUser(Model model) {
		System.out.println("adminUser");
		model.addAttribute("userList", adminBiz.adminUserList());

		return "/admin/adminUser";
	}
	
//	// 회원 정보 모달 
//	@RequestMapping("/adminUserModal.do")
//	public String adminUserModal(Model model, int user_no) {
//		System.out.println("adminUserModal");
//		model.addAttribute("userModal", adminBiz.adminUserModal(user_no));
//
//		return "/admin/adminUser";
//	}
	
//	// 회원 활성화 여부 update
//	@RequestMapping("/adminUpdateUserEnable.do")
//	public int updateUserEnable(Model model, String user_id) {
//		System.out.println("update user enable");
//		
//		return 0;
//	}
	
	// 회원 삭제
	@RequestMapping("/adminUserDelete.do")
	public String adminUserDelete(Model model, HttpServletRequest httpServletRequest){ 
		System.out.println("admin user delete");
		
		String[] chk = httpServletRequest.getParameterValues("RowCheck[]");
 			System.out.println(chk); 
 			int chk_l = chk.length;
 			System.out.println(chk_l);
  
 		for(int i = 0; i < chk_l; i++) { 
 			System.out.println(chk[i]);
 			adminBiz.adminUserDelete(chk[i]); 
	 }
 
	 return "redirect:/adminUser.do"; 
	 
	}

	/* 신고 리스트 */
	@RequestMapping(value="/adminReport.do", method=RequestMethod.GET)
	public String adminReport(Model model) {
		System.out.println("admin report list");
		model.addAttribute("reportList", adminBiz.adminReportList());
		
		return "/admin/adminReport";
	}
	
	// 신고 삭제 
	@RequestMapping(value="/adminReportDelete.do", method=RequestMethod.GET)
	public String adminReportDelete(Model model, HttpServletRequest httpServletRequest){
		System.out.println("admin report delete");
		
		String[] chk  = httpServletRequest.getParameterValues("RowCheck[]");
		System.out.println(chk);
		int chk_l = chk.length;
		System.out.println(chk_l);
		
		for(int i = 0; i < chk_l; i++) {
			System.out.println(chk[i]);
			adminBiz.adminReportDelete(Integer.parseInt(chk[i]));
		}
		
		return "redirect:/adminReport.do";
	}
	
}
