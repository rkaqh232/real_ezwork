package com.ez.work.service;

import java.util.List;

import com.ez.work.domain.Appr;

public interface ApprService {

	public int getListCount();
	public List<Appr> getApprList(int page, int limit, String id);
	
}
