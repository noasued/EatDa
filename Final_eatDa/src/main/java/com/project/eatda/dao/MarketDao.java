package com.project.eatda.dao;

import java.util.List;

import com.project.eatda.dto.CartProductDto;
import com.project.eatda.dto.ProductDto;

public interface MarketDao {
	String NAMESPACE_MARKET = "market.";
	
	public List<ProductDto> takeProductList(int num);
	public int paging();
	public List<ProductDto> likeProductList(String user_id);
	public List<ProductDto> hashTagSearch(String tagName);
	public List<ProductDto> searchKeyword(String tagName);
	public ProductDto getProduct(String p_id);
	public int putShoppingBag(CartProductDto cpDto);

}
