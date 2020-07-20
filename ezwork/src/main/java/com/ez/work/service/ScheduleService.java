package com.ez.work.service;

import java.util.List;

import com.ez.work.domain.Member;
import com.ez.work.domain.Schedule;

public interface ScheduleService {
	
	//일정 추가
	public int addSchedule(Schedule sche) throws Exception;
	
	//일정 view
	public List<Schedule> showSchedule()  throws Exception;
	
	//로그인 정보 가져오기
	public Member getInfo(String m_code);
}