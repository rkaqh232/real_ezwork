package com.ez.work.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ez.work.dao.AnnualLeaveDAO;
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
	public List<ALRequest> getRequestList(int page, int limit) {
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		int startrow = (page - 1) * limit + 1;
		int endrow = startrow + limit - 1;
		map.put("start", startrow);
		map.put("end", endrow);
		return dao.getRequestList(map);
	}

	@Override
	public int getListCount() {
			return dao.getListCount();
	}

	@Override
	public List<ALRequest> getTeamInfo(String M_PART_C) {
		return dao.getTeamInfo(M_PART_C);
	}
}
