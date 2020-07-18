package com.ez.work.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ez.work.dao.ScheduleDAO;
import com.ez.work.domain.Member;
import com.ez.work.domain.Schedule;

@Repository
public class ScheduleServiceImpl implements ScheduleService {

	@Autowired
	private ScheduleDAO dao;
	
	//일정 추가
	public int addSchedule(Schedule sche) throws Exception{
		return dao.addSchedule(sche);
	}

	//일정 view
	@Override
	public List<Schedule> showSchedule() {
		return dao.showSchedule();
	}
	
	//로그인 정보 가져오기
	@Override
	public Member getInfo(String m_code) {
		return dao.getInfo(m_code);
	}
	

}
