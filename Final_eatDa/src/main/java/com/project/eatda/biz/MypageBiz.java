package com.project.eatda.biz;

import java.util.List;

import com.project.eatda.dto.BlogDto;
import com.project.eatda.dto.CouponDto;
import com.project.eatda.dto.ProductDto;
import com.project.eatda.dto.SubscriptionDto;

public interface MypageBiz {
	
	//구독내역
	public SubscriptionDto subscriptionList(SubscriptionDto dto);
	
	//쿠폰함
	public List<CouponDto> couponList(CouponDto dto);
	
	//블로그 찜
	public List<BlogDto> blogLikeList(String user_id);
	
}
 