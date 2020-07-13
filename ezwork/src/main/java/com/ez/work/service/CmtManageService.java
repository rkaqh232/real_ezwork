package com.ez.work.service;

import java.util.List;

import com.ez.work.domain.CmtManage;

public interface CmtManageService {

	// 일일 근태 현황 리스트
	public List<CmtManage> getCmtList();

	// 출근 정보 입력
	public void insertOntime(CmtManage cmtManageOn);

	// 퇴근 정보 입력
	public int insertOfftime(CmtManage cmtManageOff);

	// 연장 근무 시간 계산
	public int insertOvertime(CmtManage cmtManageOver);

	// id 확인
	//public int idCheck(int num);

	// 근무확정
	public int insertConfirm(CmtManage cmtManageConfirm);


}
