package com.project.eatda.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@RequestMapping("/adminMain.do")
    public String admin1() {
        System.out.println("adminMain");
        return "/admin/adminMain";
    }
	@RequestMapping("/adminPostReply.do")
    public String adminPostReply() {
        System.out.println("adminPostReply");
        return "/admin/adminPostReply";
    }
	@RequestMapping("/adminPostBlog.do")
    public String adminPostBlog() {
        System.out.println("adminPostBlog");
        return "/admin/adminPostBlog";
    }
	@RequestMapping("/adminPostEvent.do")
    public String adminPostEvent() {
        System.out.println("adminPostEvent");
        return "/admin/adminPostEvent";
    }
	
	@RequestMapping("/adminRecipe.do")
    public String adminRecipe() {
        System.out.println("adminRecipe");
        return "/admin/adminRecipe";
    }
	@RequestMapping("/adminProduct.do")
    public String adminProduct() {
        System.out.println("adminProduct");
        return "/admin/adminProduct";
    }
	@RequestMapping("/adminOrder.do")
    public String adminOrder() {
        System.out.println("adminOrder");
        return "/admin/adminOrder";
    }
	@RequestMapping("/adminUser.do")
    public String adminUser() {
        System.out.println("adminUser");
        return "/admin/adminUser";
    }
	@RequestMapping("/adminReport.do")
    public String adminReport() {
        System.out.println("adminReport");
        return "/admin/adminReport";
    }
	

}
