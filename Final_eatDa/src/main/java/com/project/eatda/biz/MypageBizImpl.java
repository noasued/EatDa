package com.project.eatda.biz;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.project.eatda.dao.MemberDao;
import com.project.eatda.dao.MypageDao;
import com.project.eatda.dto.SubscriptionDto;

@Service
public class MypageBizImpl implements MypageBiz{

	@Inject
	MypageDao mypageDao;

	@Override
	public SubscriptionDto subscriptionList(SubscriptionDto dto) {
		return mypageDao.subscriptionList(dto);
	}
}
