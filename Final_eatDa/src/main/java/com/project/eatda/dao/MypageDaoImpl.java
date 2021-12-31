package com.project.eatda.dao;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.eatda.dto.BlogDto;
import com.project.eatda.dto.CouponDto;
import com.project.eatda.dto.SubscriptionDto;

@Repository
public class MypageDaoImpl implements MypageDao{

	@Inject
	SqlSession sqlSession;

	//구독내역
	@Override
	public SubscriptionDto subscriptionList(SubscriptionDto dto) {
		SubscriptionDto dto2 = null;
		
		try {
			dto2 = sqlSession.selectOne(NAMESPACE_MYPAGE + "subscriptionList", dto);
		} catch (Exception e) {
			System.out.println("subscriptionList Dao ERROR");
			e.printStackTrace();
		}
		
		return dto2;
	}

	//쿠폰함
	@Override
	public List<CouponDto> couponList(CouponDto dto) {
		List<CouponDto> list = new ArrayList<CouponDto>();
		
		try {
			list = sqlSession.selectList(NAMESPACE_MYPAGE + "couponList", dto);
		} catch (Exception e) {
			System.out.println("couponList Dao ERROR");
			e.printStackTrace();
		}
		
		return list;
		
	}

	@Override
	public List<BlogDto> blogLikeList(String user_id) {
		List<BlogDto> blogList = null;
		
		try {
			blogList = sqlSession.selectList(NAMESPACE_MYPAGE + "blogLikeList", user_id);
		} catch (Exception e) {
			System.out.println("blogLikeList Dao ERROR");
			e.printStackTrace();
		}
		return blogList;
	}


	
}
