package com.project.eatda.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.eatda.dao.MarketDao;
import com.project.eatda.dto.CartProductDto;
import com.project.eatda.dto.ProductDto;
import com.project.eatda.dto.ProductLikeDto;
import com.project.eatda.dto.ReviewDto;

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

	@Override
	public ProductDto getProduct(String p_id) {
		return marketDao.getProduct(p_id);
	}

	@Override
	public List<ProductDto> searchKeyword(String tagName) {
		return marketDao.searchKeyword(tagName);
	}

	@Override
	@Transactional
	public int putShoppingBag(CartProductDto dto) {
		int res = marketDao.putShoppingBag(dto);
		
		return res;
	}

	@Override
	public List<ReviewDto> getReview(String p_id) {
		return marketDao.getReview(p_id);
	}

	@Override
	@Transactional
	public int likeProductInsert(ProductLikeDto dto) {
		int res = marketDao.likeProductInsert(dto);
		return res;
	}

	@Override
	@Transactional
	public int deleteProductLike(ProductLikeDto dto) {
		int res = marketDao.deleteProductLike(dto);
		return res;
	}

	@Override
	public List<CartProductDto> getCartList(String user_id) {
		return marketDao.getCartList(user_id);
	}

	@Override
	public int deleteProductBag(List<String> list) {
		int res = marketDao.deleteProductBag(list);
		return res;
	}
}
