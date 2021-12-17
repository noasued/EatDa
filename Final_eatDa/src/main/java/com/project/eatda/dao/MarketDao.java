package com.project.eatda.dao;

import java.util.List;
import java.util.Map;

import com.project.eatda.dto.ProductDto;

public interface MarketDao {
	String NAMESPACE_MARKET = "market.";
	
	public List<ProductDto> getProductList();
	
	public List<ProductDto> takeProductList(int num);

}
