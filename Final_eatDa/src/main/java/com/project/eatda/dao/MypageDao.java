package com.project.eatda.dao;


import java.util.List;

import com.project.eatda.dto.CouponDto;
import com.project.eatda.dto.SubscriptionDto;

public interface MypageDao {
String NAMESPACE_MYPAGE = "mypage.";
	
	//구독내역
	public SubscriptionDto subscriptionList(SubscriptionDto dto);
	
	//쿠폰함
	public List<CouponDto> couponList(CouponDto dto);
}
