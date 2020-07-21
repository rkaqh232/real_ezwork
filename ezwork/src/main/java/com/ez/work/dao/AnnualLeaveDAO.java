package com.ez.work.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ez.work.domain.ALRequest;
import com.ez.work.domain.Member;

@Repository
public class AnnualLeaveDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public Member getInfo(String M_CODE) {
		return sqlSession.selectOne("Members.EmpCheck", M_CODE);
	}

	public int insertAL(ALRequest alrequest) {
		return sqlSession.insert("RequestAL.insert", alrequest);
	}

	public List<ALRequest> getRequestList(HashMap<String, Object> map) {
		return sqlSession.selectList("RequestAL.list", map);
	}


	public List<ALRequest> getTeamInfo(String m_PART_C) {
		return sqlSession.selectList("RequestAL.teamInfo", m_PART_C);
	}

	public int getListCount(String id) {
		return sqlSession.selectOne("RequestAL.count", id);
	}

}
