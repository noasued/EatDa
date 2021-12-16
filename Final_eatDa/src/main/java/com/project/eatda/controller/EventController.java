package com.project.eatda.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EventController {
	private static final Logger logger = LoggerFactory.getLogger(EventController.class);
	
	@RequestMapping("/event.do")
	public String eventMain() {
		System.out.println("event-main page");
		return "/event/event-main";
	}
	
	@RequestMapping("/event-detail.do")
	public String eventDetail() {
		System.out.println("event-detail page");
		return "/event/event-detail";
	}
	
	@RequestMapping("/event-update.do")
	public String eventUpdate() {
		System.out.println("event-update page");
		return "/event/event-update";
	}
	
	@RequestMapping("/event-write.do")
	public String eventWrite() {
		System.out.println("event-write page");
		return "/event/event-write";
	}
	

}
