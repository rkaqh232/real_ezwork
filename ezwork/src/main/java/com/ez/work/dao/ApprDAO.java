package com.ez.work.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ez.work.domain.Appr;
import com.ez.work.domain.Member;

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

	public String getPart(String m_code) {		
		return sqlSession.selectOne("Apprs.getpart", m_code);
	}

	public String getName(String m_code) {
		return sqlSession.selectOne("Apprs.getname",m_code);
	}
	
	public List<Member> searchMemList(String keyword) {
		return sqlSession.selectList("Apprs.getmemList",keyword);
	}

	public int getMemCount() {
		return sqlSession.selectOne("Apprs.getmemcount");
	}

	public void insertAppr(Appr appr) {
		sqlSession.insert("Apprs.insertappr",appr);
		
	}
	
}
