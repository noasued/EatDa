package com.project.eatda.biz;

import java.util.List;
import java.util.Map;

import com.project.eatda.dto.ProductDto;

public interface MarketBiz {
	
	public List<ProductDto> takeProductList(int num);
	public int paging();
	public List<ProductDto> likeProductList(String user_id);
	public List<ProductDto> hashTagSearch(String tagName);
	public List<ProductDto> searchKeyword(String tagName);
	public ProductDto getProduct(String p_id);
}
