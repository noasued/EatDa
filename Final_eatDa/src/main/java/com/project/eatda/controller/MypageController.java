package com.project.eatda.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.eatda.biz.MypageBiz;
import com.project.eatda.dto.BlogDto;
import com.project.eatda.dto.CouponDto;
import com.project.eatda.dto.OrderDto;
import com.project.eatda.dto.OrderProductDto;
import com.project.eatda.dto.ProductDto;
import com.project.eatda.dto.RecipeDto;
import com.project.eatda.dto.ReviewDto;
import com.project.eatda.dto.SubscriptionDto;
import com.project.eatda.dto.UserDto;

@Controller
public class MypageController {
	private static final Logger logger = LoggerFactory.getLogger(MypageController.class);
	
	@Autowired
	private MypageBiz mypageBiz;

	@Autowired
	private SubscriptionDto subscriptionDto;
	
	//페이지 이동
	@RequestMapping("/mypage.do")
	public String mypageMain() {
		System.out.println("mypage_main page");
		return "/mypage/mypage_main";
	}	
	 
	@RequestMapping("/mypage_like.do")
	public String mypageLike() {
		System.out.println("mypage_like page");
		return "/mypage/mypage_like";
	}	
	
	@RequestMapping("/mypage_updateForm.do")
	public String mypageUpdateForm() {
		System.out.println("mypage_info_update page");
		return "/mypage/mypage_info_update";
	}	
	
	@RequestMapping("/mypage_subscription.do")
	public String mypageSubscription() {
		System.out.println("mypage_subscription page");
		return "/mypage/mypage_subscription";
	}	
	
	@RequestMapping("/mypage_coupon.do")
	public String mypageCoupon() {
		System.out.println("mypage_coupon page");
		return "/mypage/mypage_coupon";
	}	
	
	@RequestMapping("/mypage_order_list.do")
	public String mypageOrderList() {
		System.out.println("mypage_orderList page");
		return "/mypage/mypage_order_list";
	}
	
	//구독내역
	@RequestMapping("mypage_subscription_list.do")
	public String subscriptionList(Model model, SubscriptionDto dto) {
		logger.info(dto.getUser_id());
		model.addAttribute("dto", mypageBiz.subscriptionList(dto));
		
		return "/mypage/mypage_subscription";
	}
	
	//구독상품
	@RequestMapping(value="/getMarketProduct.do", method=RequestMethod.POST) 
	@ResponseBody
	public List<ProductDto> getMarketProduct() {
		logger.info("getMarketProduct");
		List<ProductDto> list = mypageBiz.getMarketProduct();
		
		return list;
	}
	
	//쿠폰함
	@RequestMapping("mypage_couponList.do")
	public String couponList(Model model, CouponDto dto){
		logger.info("couponList, user_id=" + dto.getUser_id());
		model.addAttribute("list", mypageBiz.couponList(dto));
		
		return "/mypage/mypage_coupon";
	}

	//블로그 찜
	@RequestMapping(value="blogLikeList.do", method=RequestMethod.POST)
	@ResponseBody
	public List<BlogDto> blogLikeList(HttpServletRequest requset){
		logger.info("blogLikeList");
		UserDto user = getLoginUser(requset);
		
		List<BlogDto> list = mypageBiz.blogLikeList(user.getUser_id());
		
		return list;
	}
	
	//주문한 상품
	@RequestMapping(value="marketOrderList.do", method=RequestMethod.POST)
	@ResponseBody
	public List<OrderProductDto> marketOrderList(HttpServletRequest requset){
		logger.info("marketOrderList");
		UserDto user = getLoginUser(requset);
		
		List<OrderProductDto> list = mypageBiz.marketOrderList(user.getUser_id());
		
		return list;
	}
	
	//주문 내역
	@RequestMapping(value="marketOrderList2.do", method=RequestMethod.GET)
	public String marketOrderList2(Model model, OrderDto dto){
		logger.info("marketOrderList2");
		model.addAttribute("list", mypageBiz.marketOrderList2(dto));
			
		return "/mypage/mypage_order_list";
	}
	
	//리뷰 작성
	@RequestMapping("registReview.do")
	public String registReview(ReviewDto dto) {
		logger.info("registReview");
			
		int res = mypageBiz.registReview(dto);
			
		if(res>0) {
			return "/mypage/mypage_like";
		}else {
			return null;
		}
			
		
	}
		
	//리뷰 작성폼
	@RequestMapping("reviewForm.do")
	public String reviewForm(Model model, OrderProductDto dto) {
		logger.info("registForm");
		model.addAttribute("dto", dto);
		
		return "/mypage/mypage_review";
	}
	

		
	
	
	public UserDto getLoginUser(HttpServletRequest request) {
		UserDto dto = (UserDto)request.getSession().getAttribute("member");
		return dto;
	}
	
	
	


}
