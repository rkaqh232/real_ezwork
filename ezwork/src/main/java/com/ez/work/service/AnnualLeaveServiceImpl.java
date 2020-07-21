package com.ez.work.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ez.work.dao.AnnualLeaveDAO;
import com.ez.work.domain.ALList;
import com.ez.work.domain.ALRequest;
import com.ez.work.domain.Member;

@Service
public class AnnualLeaveServiceImpl implements AnnualLeaveService {
	
	@Autowired
	private AnnualLeaveDAO dao;

	@Override
	public Member getInfo(String M_CODE) {
		return dao.getInfo(M_CODE);
	}

	@Override
	public int insertAL(ALRequest alrequest) {
		return dao.insertAL(alrequest);
	}

	@Override
	public List<ALRequest> getRequestList(int page, int limit, String id) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		int startrow = (page - 1) * limit + 1;
		int endrow = startrow + limit - 1;
		map.put("start", startrow);
		map.put("end", endrow);
		map.put("id", id);
		return dao.getRequestList(map);
	}

	@Override
	public int getListCount(String id) {
			return dao.getListCount(id);
	}

	@Override
	public List<ALRequest> getTeamInfo(String M_PART_C) {
		return dao.getTeamInfo(M_PART_C);
	}

	@Override
	public int ALlistInsert(Member member) {
		System.out.println(member.getLG_NAME());
		return dao.ALlistInsert(member);
	}
}
