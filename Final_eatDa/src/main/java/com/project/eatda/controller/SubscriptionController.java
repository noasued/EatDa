package com.project.eatda.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SubscriptionController {
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
}
