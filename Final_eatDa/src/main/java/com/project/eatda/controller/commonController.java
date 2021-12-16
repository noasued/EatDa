package com.project.eatda.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class commonController {
	private static final Logger logger = LoggerFactory.getLogger(commonController.class);

	@RequestMapping("index.do")
	public String goIndex() {
		logger.info("Index page");
		return "../../index";
	}

}
