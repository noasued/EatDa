package com.project.eatda.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.eatda.biz.MemberBiz;
import com.project.eatda.biz.MypageBiz;
import com.project.eatda.dto.SubscriptionDto;

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
	
	
	@RequestMapping("mypage_subscription_list.do")
	public String subscriptionList(Model model, SubscriptionDto dto) {
		logger.info(dto.getUser_id());
		model.addAttribute("dto", mypageBiz.subscriptionList(dto));
		
		return "/mypage/mypage_subscription";
	}

	
	
	


}
