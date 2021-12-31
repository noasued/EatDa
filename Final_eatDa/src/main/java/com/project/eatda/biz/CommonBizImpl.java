package com.project.eatda.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.eatda.dao.CommonDao;
import com.project.eatda.dto.ProductDto;
import com.project.eatda.dto.RecipeDto;

@Service
public class CommonBizImpl implements CommonBiz{
	
	@Autowired
	public CommonDao dao;

	@Override
	public List<ProductDto> getMarketData() {
		return dao.getMarketData();
	}

	@Override
	public List<RecipeDto> getRecentRecipe() {
		return dao.getRecentRecipe();
	}
	
}
