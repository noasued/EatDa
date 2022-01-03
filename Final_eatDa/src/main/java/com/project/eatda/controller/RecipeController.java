package com.project.eatda.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.eatda.biz.RecipeBiz;
import com.project.eatda.dto.RecipeDto;
import com.project.eatda.dto.RecipePageBaseDto;
import com.project.eatda.dto.RecipePageDto;

@Controller
public class RecipeController {
	private static final Logger logger = LoggerFactory.getLogger(RecipeController.class);
	
	@Autowired
	private RecipeBiz biz;
	
	@RequestMapping("/recipeList.do")
	public String recipeList(Model model) {
		logger.info("RECIPE LIST");
		
		model.addAttribute("list", biz.recipeList());
		
		return "/recipe/recipeList";
	}
	
	@RequestMapping("/recipeListTest.do")
	public String recipeListTest(Model model, RecipePageBaseDto rpbdto) {
		logger.info("RECIPE LIST TEST");
		
		RecipePageDto rpdto = new RecipePageDto(rpbdto, biz.getTotal(rpbdto));
		
		model.addAttribute("rpdto", rpdto);
		model.addAttribute("list", biz.recipeTest(rpbdto));
		
		return "/recipe/recipeList_test";
	}
	
	@RequestMapping("/recipeCategory.do")
	public String recipeCategory(Model model, String recipe_category) {
		logger.info("RECIPE CATEGORY");
		
		model.addAttribute("list", biz.recipeCategory(recipe_category));
		
		return "/recipe/recipeList";
	}

	@RequestMapping("/recipeDetail.do")
	public String recipeDetail(Model model, int recipe_no) {
		logger.info("RECIPE DETAIL");
		
		model.addAttribute("dto", biz.recipeDetail(recipe_no));
		
		//조회수 +1
		biz.updateRecipeCount(recipe_no);
		return "/recipe/recipeDetail";
	}

	@RequestMapping("/recipeInsert.do")
	public String recipeInsert() {
		logger.info("RECIPE INSERT");
		
		return "/recipe/recipeInsert";
	}
	
	@RequestMapping("/recipeInsertRes.do")
	public String recipeInsertRes(RecipeDto dto) {
		logger.info("RECIPE INSERT RESULT");

		int res = biz.recipeInsert(dto);
		
		if(res>0){			
			return "redirect:recipeList.do";
		}else {
			return "redirect:recipeInsert.do";
		}
	}
	
	@RequestMapping("/recipeUpdateForm.do")
	public String recipeUpdateForm(Model model, int recipe_no) {
		logger.info("RECIPE UPDATE FORM");
		
		model.addAttribute("dto",biz.recipeDetail(recipe_no));
		return "/recipe/recipeUpdateForm";
	}
	
	@RequestMapping("/recipeupdateRes.do")
	public String recipeUpdateRes(RecipeDto dto) {
		logger.info("RECIPE UPDATE RESULT");
		
		int res = biz.recipeUpdate(dto);
		if(res>0) {
			return "redirect:recipeDetail.do?recipe_no="+dto.getRecipe_no();
		}else {
			return "redirect:recipeUpdateForm.do?recipe_no="+dto.getRecipe_no();			
		}
	}
	
	@RequestMapping("/deleteConfirm.do")
	public String deleteConfirm(int recipe_no) {
		logger.info("RECIPE DELETE CONFIRM");
		
		return "recipe/deleteConfirm";
	}
	@RequestMapping("/recipeDelete.do")
	public String recipeDelete(int recipe_no) {
		logger.info("RECIPE DELETE");
		
		int res = biz.recipeDelete(recipe_no);
		if(res>0) {
			return "redirect:recipeList.do";
		}else {
			return "redirect:recipeDetail.do?recipe_no="+recipe_no;
		}
	}
	



}
