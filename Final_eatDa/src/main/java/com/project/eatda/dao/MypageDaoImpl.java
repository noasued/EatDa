package com.project.eatda.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.eatda.dto.SubscriptionDto;

@Repository
public class MypageDaoImpl implements MypageDao{

	@Inject
	SqlSession sqlSession;

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
	
}
