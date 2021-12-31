package com.project.eatda.dao;

import java.util.List;

import com.project.eatda.dto.ProductDto;
import com.project.eatda.dto.RecipeDto;

public interface CommonDao {
	String COMMON_NAMESPACE = "common.";
	
	public List<ProductDto> getMarketData();
	
	public List<RecipeDto> getRecentRecipe();
}
