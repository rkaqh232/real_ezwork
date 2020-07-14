package com.ez.work.service;

import java.util.List;

import com.ez.work.domain.CmtManage;
import com.ez.work.domain.Member;

public interface CmtManageService {

	// 일일 근태 현황 리스트
	public List<CmtManage> getCmtList();

	// 출근 정보 입력
	public void insertOntime(CmtManage cmtManageOn);

	// 퇴근 정보 입력
	public int insertOfftime(CmtManage cmtManageOff);

	// 연장 근무 시간 계산
	public int insertOvertime(CmtManage cmtManageOver);

	// 근무확정
	public int insertConfirm(CmtManage cmtManageConfirm);
	
	//당일 근태 현황 select
	public CmtManage getDetail(String datecode);
	
	//로그인 정보 가져오기
	public Member getInfo(String M_CODE);


}
