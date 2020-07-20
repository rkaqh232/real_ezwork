package com.ez.work.service;

import java.util.List;

import com.ez.work.domain.ALRequest;
import com.ez.work.domain.Member;

public interface AnnualLeaveService {

	// 로그인 정보 가져오기
	public Member getInfo(String M_CODE);
	
	//휴가 신청 등록
	public int insertAL(ALRequest alrequest);
	
	//휴가 신청 list
	public List<ALRequest> getRequestList(int page, int limit);
	
	// 목록 갯수 구하기
	public int getListCount();
	
	// 부서 휴가 목록
	public List<ALRequest> getTeamInfo(String M_PART_C);
}
