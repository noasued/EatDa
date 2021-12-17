package com.project.eatda.dao;

import java.util.*;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.eatda.dto.ProductDto;

@Repository
public class MarketDaoImpl implements MarketDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public List<ProductDto> takeProductList(int num) {
		//1 : 1 - 9
		//2 : 10- 18
		//3 : 19- 27
		ArrayList<String> parameter = new ArrayList<String>();
		List<ProductDto> list = null;
	
		parameter.add("P" + (num==1?num:num*9-8));
		parameter.add("P" + (num==1?num*9:num*9));
		
		try {
			list = sqlSession.selectList(NAMESPACE_MARKET+"productList", parameter);
		} catch (Exception e) {
			System.out.println("takeProductList DAO ERROR");
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public int paging() {
		int productCount = 0;
		
		
		try {
			productCount = sqlSession.selectOne(NAMESPACE_MARKET+"paging");
		} catch (Exception e) {
			System.out.println("paging DAO ERROR");
			e.printStackTrace();
		}
		
		return productCount;
	}

	@Override
	public List<ProductDto> likeProductList(String user_id) {
		List<ProductDto> list = null;
		
		try {
			list = sqlSession.selectList(NAMESPACE_MARKET+"likeProductList", user_id);
		} catch (Exception e) {
			System.out.println("likeProductList DAO ERROR");
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<ProductDto> hashTagSearch(String tagName) {
		List<ProductDto> list = null;
		
		try {
			list = sqlSession.selectList(NAMESPACE_MARKET+"hashTagSearch", tagName);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	

}
