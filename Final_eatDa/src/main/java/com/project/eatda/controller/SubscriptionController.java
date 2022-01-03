package com.project.eatda.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SubscriptionController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@RequestMapping("/subMain.do")
    public String subMain() {
        System.out.println("subMain");
        return "/subscription/subscriptionMain";
    }
	@RequestMapping("/subForm.do")
    public String subForm(Model model, String type) {
        System.out.println("subForm");
       
        String str = "";
        
        if(type.equals("weekly")) {
        	str ="주간 구독";
        }else if(type.equals("monthly")) {
        	str ="월간 구독";
        }else {
        	str ="분기 구독";
        }
        model.addAttribute("type", str);
        
        return "/subscription/subscriptionForm";
    }
	
	@RequestMapping("/subFinish.do")
	public String subFinish(HttpServletRequest httpServletRequest, Model model) {
		logger.info("subscription Finish");
		// 라디오 버튼 체크 값
		String chk = httpServletRequest.getParameter("chk");
		// 남기는 메세지 값
		String msg = httpServletRequest.getParameter("msg");
		
		System.out.println("chk : "+chk+", msg: "+msg);
		
		return "/market/payment";
	}
	
	

}
