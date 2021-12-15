package com.project.eatda.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MypageController {
	private static final Logger logger = LoggerFactory.getLogger(MypageController.class);
	
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
	
	


}
