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
	public int insertOvertime(CmtManage cmtManageOver) {
		return dao.insertOvertime(cmtManageOver);
	}

	@Override
	public int insertConfirm(CmtManage cmtManageConfirm) {
		return dao.insertConfirm(cmtManageConfirm);
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



}
