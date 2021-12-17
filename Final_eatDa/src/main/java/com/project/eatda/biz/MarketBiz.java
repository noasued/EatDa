package com.project.eatda.biz;

import java.util.List;
import java.util.Map;

import com.project.eatda.dto.ProductDto;

public interface MarketBiz {
	
	public List<ProductDto> getProductList();
	
	
	public List<ProductDto> takeProductList(int num);
}
