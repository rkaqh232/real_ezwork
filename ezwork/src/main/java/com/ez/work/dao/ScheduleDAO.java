package com.ez.work.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ez.work.domain.Schedule;
@Repository
public class ScheduleDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	public void addSchedule(Schedule sche) throws Exception  {
		sqlSession.insert("Schedule.addSchedule", sche);
	}

	public List<Schedule> showSchedule() {
		return sqlSession.selectList("Schedule.showSchedule");
	}

}
