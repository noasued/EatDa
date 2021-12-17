package com.project.eatda.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);


	@RequestMapping("/regist_form.do")
	public String mypageMain() {
		System.out.println("regist_form page");
		return "/login/login_regist_form";
	}	

	@RequestMapping("/admin.do")
    public String test2() {
        System.out.println("test2");
        return "/subscription/subscriptionMain";
    }


}
