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
import com.project.eatda.dto.CartProductDto;
import com.project.eatda.dto.ProductDto;
import com.project.eatda.dto.ProductLikeDto;
import com.project.eatda.dto.ReviewDto;

@Controller
public class MarketController {
	private static final Logger logger = LoggerFactory.getLogger(MarketController.class);
	
	@Autowired
	private MarketBiz marketBiz;
	
	//임시 유저 아이디
	String user_id = "ADMIN";
	
	@RequestMapping(value="/product.do", method=RequestMethod.POST)
	@ResponseBody
	public List<ProductDto> takeProductList(@RequestBody String num) {
		logger.info("takeProductList");
		
		int iNum = Integer.parseInt(num.charAt(0)+"");
		List<ProductDto> list = marketBiz.takeProductList(iNum);
		
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
		
		List<ProductDto> list = marketBiz.likeProductList(user_id);
		return list;
	}
	
	@RequestMapping(value="/hashTagSearch.do", method=RequestMethod.POST)
	@ResponseBody
	public List<ProductDto> hashTagSearch(@RequestBody String tagname) {
		logger.info("hashTagSearch, tagName : " + tagname);
		String hashTag = tagname.substring(1, tagname.length()-1);
		
		List<ProductDto> list = marketBiz.hashTagSearch(hashTag);
		return list;
	}
	
	@RequestMapping(value="/searching.do", method=RequestMethod.POST)
	@ResponseBody
	public List<ProductDto> searchKeyword(@RequestBody String tagname) {
		logger.info("hashTagSearch, tagName : " + tagname);
		String hashTag = tagname.substring(1, tagname.length()-1);
		
		List<ProductDto> list = marketBiz.searchKeyword(hashTag);
		return list;
	}
	
	
	@RequestMapping(value="/goProductPage.do", method=RequestMethod.GET)
	public String goProductPage(Model model, String p_id) {
		logger.info("goProductPage, p_id : " + p_id);
		ProductDto dto = marketBiz.getProduct(p_id);
		model.addAttribute("product",dto);
		
		return "/market/marketPage";
	}
	
	@RequestMapping(value="/putShoppingBag.do", method=RequestMethod.POST)
	@ResponseBody
	public String putShoppingBag(@RequestBody String data) {
		//로그인 되어있는 세션에 이미 카트번호가 담겨있음.
		//장바구니에 해당 상품이 담겨있는지 체크해야함.
		logger.info("putShoppingBag, data : " + data);
		String[] sArr = data.split(",");
		String p_id = sArr[0].substring(9, sArr[0].length()-1);
		int p_price = Integer.parseInt(sArr[1].substring(10, sArr[1].length()));
		int quantity = Integer.parseInt(sArr[2].substring(12,sArr[2].length()-2));
		
		System.out.println("p_id : " + p_id + ", p_price : " + p_price + ", quantity : " + quantity);
		CartProductDto cpDto = new CartProductDto(user_id,p_id,quantity,p_price,null,null);
		//세션에서 user_ID 가져와야함 (위 DTO의 첫 번째 파라미터로 넣어줘야 함)
		
		int res = marketBiz.putShoppingBag(cpDto);
		System.out.println("controller.res : "+res); 
		
		return res > 0? "true":"false";
	}
	
	@RequestMapping("/marketMain.do")
	public String goMarketMain(Model model) {
		logger.info("Market Main Page");
		return "/market/marketMain";
	}
	
	@RequestMapping(value="/getReview.do", method=RequestMethod.POST)
	@ResponseBody
	public List<ReviewDto> getReview(@RequestBody String p_id) {
		logger.info("getReview, p_id : " + p_id);
		
		List<ReviewDto> list = marketBiz.getReview(p_id.substring(0, p_id.length()-1));
		return list;
	}
	
	@RequestMapping(value="/likeProductInsert.do", method=RequestMethod.POST)
	@ResponseBody
	public String likeProductInsert(@RequestBody String p_id) {
		logger.info("likeProductInsert, p_id : " + p_id);
		
		int res = marketBiz.likeProductInsert(new ProductLikeDto(user_id, p_id.substring(0,p_id.length()-1)));
		return res > 0 ? "true":"false";
	}
	
	@RequestMapping(value="/deleteProductLike.do", method=RequestMethod.POST)
	@ResponseBody
	public String deleteProductLike(@RequestBody String p_id) {
		logger.info("deleteProductLike, p_id : " + p_id);
		
		int res = marketBiz.deleteProductLike(new ProductLikeDto(user_id, p_id.substring(0,p_id.length()-1)));
		return res > 0 ? "true":"false";
	}
	
	@RequestMapping("/goShoppingBag.do")
	public String goShoppingBag(Model model) {
		//장바구니에서 뿌려줄 정보들 select 해오자.
		logger.info("goShoppingBag");
		List<CartProductDto> cart = marketBiz.getCartList(user_id);
		for (CartProductDto dto : cart) {
			System.out.println(dto);
		}
		model.addAttribute("list", cart);
		return "/market/shoppingBag";
	}
	
	@RequestMapping("/orderSuccess.do")
	public String test4() {
		System.out.println("test4");
		return "/market/orderSuccess";
	}
	
	//결제 페이지에서 필요한 것 (유저 정보, 유저가 가지고 있는 쿠폰 종류, 장바구니에서 넘어올 데이터)
	@RequestMapping("/payment.do")
	public String test5() {
		System.out.println("test5");
		return "/market/payment";
	}
	

}
