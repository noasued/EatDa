package com.project.eatda.controller;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.eatda.biz.MarketBiz;
import com.project.eatda.dto.ProductDto;

@Controller
public class MarketController {
	private static final Logger logger = LoggerFactory.getLogger(MarketController.class);
	
	@Autowired
	private MarketBiz marketBiz;
	
	@RequestMapping(value="/product.do", method=RequestMethod.POST)
	@ResponseBody
	public List<ProductDto> takeProductList(@RequestBody String num) {
		logger.info("takeProductList");
		
		int iNum = Integer.parseInt(num.charAt(0)+"");
		List<ProductDto> list = marketBiz.takeProductList(iNum);
		
		for (ProductDto dto : list) {
			System.out.println(dto.toString());
		}
		
		return list;
	}
	
	@RequestMapping(value="/paging.do", method=RequestMethod.POST) 
	@ResponseBody
	public List<Integer> paging() {
		logger.info("paging");
		
		int count = marketBiz.paging();
		List<Integer> list = new ArrayList<Integer>();
		list.add(count);
		
		return list;
	}
	
	@RequestMapping(value="/likeProduct-main.do", method=RequestMethod.POST)
	@ResponseBody
	public List<ProductDto> likeProductList() {
		logger.info("likeProductList");
		
		//임시 유저 아이디
		String user_dto = "ADMIN";
		
		List<ProductDto> list = marketBiz.likeProductList(user_dto);
		return list;
	}
	
	@RequestMapping(value="/hashTagSearch.do", method=RequestMethod.POST)
	@ResponseBody
	public List<ProductDto> hashTagSearch(@RequestBody String tagName) {
		logger.info("hashTagSearch");
		String hashTag = tagName.substring(0, tagName.length()-1);
		
		List<ProductDto> list = marketBiz.hashTagSearch(hashTag);
		return list;
	}
	
	
	
	
	@RequestMapping("/marketMain.do")
	public String goMarketMain(Model model) {
		logger.info("Market Main Page");
		return "/market/marketMain";
	}
	
	@RequestMapping("/page.do") 
	public String goMarketPage() {
		logger.info("Market Each Page");
		return "/market/marketPage";
	}
	
	@RequestMapping("/shoppingbag.do")
	public String test3() {
		System.out.println("test3");
		return "/market/shoppingBag";
	}
	
	@RequestMapping("/orderSuccess.do")
	public String test4() {
		System.out.println("test4");
		return "/market/orderSuccess";
	}
	
	@RequestMapping("/payment.do")
	public String test5() {
		System.out.println("test5");
		return "/market/payment";
	}
	

}
