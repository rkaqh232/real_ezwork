package com.ez.work.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ez.work.domain.EventBoard;


@Repository
public class EventBoardDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<EventBoard> getBoardList(HashMap<String, Integer> map) {
		return sqlSession.selectList("EventBoards.list", map);
	}

	public int getListCount() {
		return sqlSession.selectOne("EventBoards.count");
	}
}
