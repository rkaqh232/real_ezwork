package com.ez.work.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ez.work.dao.CmtManageDAO;
import com.ez.work.domain.CmtManage;
import com.ez.work.domain.Member;

@Service
public class CmtManageServiceImpl implements CmtManageService{
	
	@Autowired
	private CmtManageDAO dao;

	@Override
	public List<CmtManage> getCmtList() {
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		return dao.getCmtList(map);
	}

	@Override
	public void insertOntime(CmtManage cmtManageOn) {
		dao.insertOntime(cmtManageOn);
	}

	@Override
	public int insertOfftime(CmtManage cmtManageOff) {
		return dao.insertOfftime(cmtManageOff);
	}

	@Override
	public CmtManage getDetail(String m_code) {
		return dao.getDetail(m_code);
	}

	@Override
	public Member getInfo(String m_code) {
		return dao.getInfo(m_code);
	}
	
	//월간 보기
	@Override
	public List<CmtManage> monthlyCmt(String m_code) {
		return dao.monthlyCmt(m_code);
		}

	//하루 근무시간 계산
	@Override
	public void dailyWorkHours() {
		dao.dailyWorkHours();
	}

	//근태 수
	@Override
	public int getListCount() {
		return dao.getListCount();
	}
	
	//근태 리스트
	@Override
	public List<CmtManage> getCmtList(int page, int limit) {
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		int startrow = (page - 1) * limit + 1;
		int endrow = startrow + limit - 1;
		map.put("start", startrow);
		map.put("end", endrow);
		return dao.getCmtList(map);
	}

	//누적근무 계산
	@Override
	public void accumulativeHours(String id) {
		dao.accumulativeHours(id);		
	}



}
