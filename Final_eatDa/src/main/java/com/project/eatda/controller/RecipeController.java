package com.project.eatda.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RecipeController {
	private static final Logger logger = LoggerFactory.getLogger(RecipeController.class);
	
	@RequestMapping("/recipeList.do")
	public String recipeList() {
		System.out.println("test");
		return "/recipe/recipeList";
	}

	@RequestMapping("/recipeDetail.do")
	public String recipeDetail() {
		System.out.println("test22");
		return "/recipe/recipeDetail";
	}

	@RequestMapping("/recipeWriteForm.do")
	public String recipeWriteForm() {
		System.out.println("test33");
		return "/recipe/recipeWriteForm";
	}
	
	@RequestMapping("/recipeUpdateForm.do")
	public String recipeUpdateForm() {
		System.out.println("test33");
		return "/recipe/recipeUpdateForm";
	}
	
}
