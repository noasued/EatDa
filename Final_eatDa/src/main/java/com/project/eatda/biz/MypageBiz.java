package com.project.eatda.biz;

import java.util.List;

import com.project.eatda.dto.CouponDto;
import com.project.eatda.dto.SubscriptionDto;

public interface MypageBiz {
	
	//구독내역
	public SubscriptionDto subscriptionList(SubscriptionDto dto);
	
	//쿠폰함
	public List<CouponDto> couponList(CouponDto dto);
}
 