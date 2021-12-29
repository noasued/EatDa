package com.project.eatda.dao;


import com.project.eatda.dto.SubscriptionDto;

public interface MypageDao {
String NAMESPACE_MYPAGE = "mypage.";
	
	public SubscriptionDto subscriptionList(SubscriptionDto dto);
}
