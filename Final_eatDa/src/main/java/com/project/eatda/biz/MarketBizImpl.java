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
	public List<ProductDto> takeProductList(int num) {
		return marketDao.takeProductList(num);
	}

	@Override
	public int paging() {
		return marketDao.paging();
	}

	@Override
	public List<ProductDto> likeProductList(String user_id) {
		return marketDao.likeProductList(user_id);
	}


	@Override
	public List<ProductDto> hashTagSearch(String tagName) {
		return marketDao.hashTagSearch(tagName);
	}
}
