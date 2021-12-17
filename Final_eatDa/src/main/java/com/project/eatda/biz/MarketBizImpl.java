package com.project.eatda.biz;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.eatda.dao.MarketDao;
import com.project.eatda.dto.ProductDto;

@Service
public class MarketBizImpl implements MarketBiz{
	
	@Autowired
	private MarketDao marketDao;

	@Override
	public List<ProductDto> getProductList() {
		List<ProductDto> list = marketDao.getProductList();
		return list;
	}

	@Override
	public List<ProductDto> takeProductList(int num) {
		List<ProductDto> list = marketDao.takeProductList(num);
		
		return list;
	}
}
