package com.project.eatda.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SubscriptionController {
	@RequestMapping("/subMain.do")
    public String subMain() {
        System.out.println("subMain");
        return "/subscription/subscriptionMain";
    }
	@RequestMapping("/subForm.do")
    public String subForm() {
        System.out.println("subForm");
        return "/subscription/subscriptionForm";
    }
}
