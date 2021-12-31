package com.project.eatda.controller;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.eatda.biz.CommonBiz;
import com.project.eatda.dto.ProductDto;
import com.project.eatda.dto.RecipeDto;

@Controller
public class commonController {
	private static final Logger logger = LoggerFactory.getLogger(commonController.class);
	
	@Autowired
	private CommonBiz commonBiz;
	
	@RequestMapping("/index.do")
	public String goIndex() {
		logger.info("Index page");
		return "../../index";
	}
	
	@RequestMapping(value="/getMarketData.do", method=RequestMethod.POST) 
	@ResponseBody
	public List<ProductDto> getMarketData() {
		logger.info("getMarketData");
		List<ProductDto> tempList = new ArrayList<ProductDto>();
		List<ProductDto> list = commonBiz.getMarketData();
		
		for (int i = 9; i < list.size(); i++) {
			tempList.add(list.get(i));
		}
		
		return tempList;
	}
	
	@RequestMapping(value="/getRecentRecipe.do", method=RequestMethod.POST) 
	@ResponseBody
	public List<RecipeDto> getRecentRecipe() {
		logger.info("getRecentRecipe");
		List<RecipeDto> list = commonBiz.getRecentRecipe();
		
		for (int i = 0; i < list.size(); i++) {
			String temp = list.get(i).getRecipe_content();
			if (temp.length() > 30) {
				list.get(i).setRecipe_content(temp.substring(0, 60)+"...");
			}
		}
		
		return list;
	}
}
