package com.ez.work.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ez.work.domain.Appr;
import com.ez.work.domain.Mail;

@Repository
public class ApprDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public List<Appr> getApprList(HashMap<String, Object> map) {
		return sqlSession.selectList("Apprs.getlist", map);
	}

	public int getListCount() {		
		return sqlSession.selectOne("Apprs.count");
	}
	
	
	
}
