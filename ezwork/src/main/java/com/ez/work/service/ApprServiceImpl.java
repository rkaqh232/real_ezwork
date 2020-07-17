package com.ez.work.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ez.work.dao.ApprDAO;
import com.ez.work.domain.Appr;

@Service
public class ApprServiceImpl implements ApprService {

	@Autowired
	private ApprDAO dao;

	public int getListCount() {
		
		return 0;
	}

	public List<Appr> getApprList(int page, int limit, String id) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		int startrow = (page-1)*limit + 1;
		int endrow = startrow + limit -1;
		map.put("start", startrow);
		map.put("end", endrow);
		map.put("id", id);
		return dao.getInboxList(map);
		
	}
	
}
