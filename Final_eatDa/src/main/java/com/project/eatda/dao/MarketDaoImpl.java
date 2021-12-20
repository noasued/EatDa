package com.project.eatda.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.eatda.dto.CartProductDto;
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
		ArrayList<Integer> parameter = new ArrayList<Integer>();
		List<ProductDto> list = null;
	
		parameter.add((num==1?num:num*9-8));
		parameter.add((num==1?num*9:num*9));
		
		for (Integer str : parameter) {
			System.out.println(str);
		}
		
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
			System.out.println("hashTagSearch DAO ERROR");
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public ProductDto getProduct(String p_id) {
		ProductDto dto = null;
		
		try {
			dto = sqlSession.selectOne(NAMESPACE_MARKET+"getProduct", p_id);
		} catch (Exception e) {
			System.out.println("getProduct DAO ERROR");
			e.printStackTrace();
		}
		
		return dto;
	}

	@Override
	public List<ProductDto> searchKeyword(String tagName) {
		List<ProductDto> list = null;
		tagName = "%" + tagName + "%";
		
		try {
			list = sqlSession.selectList(NAMESPACE_MARKET+"searchKeyword", tagName);
		} catch (Exception e) {
			System.out.println("searchKeyword DAO ERROR");
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public int putShoppingBag(CartProductDto cpDto) {
		int res = 0;
		
		try {
			CartProductDto dto = sqlSession.selectOne(NAMESPACE_MARKET+"isProduct", cpDto);
			
			if (dto != null) {
				res = -1;
			} else {
				res = sqlSession.insert(NAMESPACE_MARKET+"putShoppingBag", cpDto);
			}
		} catch (Exception e) {
			System.out.println("putShoppingBag DAO ERROR");
			e.printStackTrace();
		}
		return res;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
