package com.project.eatda.dao;

import java.util.List;
import java.util.Map;

import com.project.eatda.dto.ProductDto;

public interface MarketDao {
	String NAMESPACE_MARKET = "market.";
	
	public List<ProductDto> takeProductList(int num);
	public int paging();
	public List<ProductDto> likeProductList(String user_id);
	
	public List<ProductDto> hashTagSearch(String tagName);

}
