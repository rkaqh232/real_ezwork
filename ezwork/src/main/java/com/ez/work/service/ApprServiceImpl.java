package com.ez.work.service;

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

	public List<Appr> getApprList(int page, int limit) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
