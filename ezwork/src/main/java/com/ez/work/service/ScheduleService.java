package com.ez.work.service;

import java.util.List;

import com.ez.work.domain.Schedule;

public interface ScheduleService {
	
	//일정 추가
	public void addSchedule(Schedule sche) throws Exception;
	
	//일정 view
	public List<Schedule> showSchedule()  throws Exception;
}
