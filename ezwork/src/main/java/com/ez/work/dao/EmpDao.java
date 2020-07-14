package com.ez.work.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ez.work.domain.Member;

//민혁
@Repository
public class EmpDao {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public List<Member> getSearchList(HashMap<String, Object> map) {
		return sqlSession.selectList("Members.getSearchList", map);
	}

	public int getSearchListCount(Map<String, String> map) {
		return sqlSession.selectOne("Members.searchcount", map);
	}

	public Member getSearchMemberInfo(String M_CODE) {
		return sqlSession.selectOne("Members.EmpCheck", M_CODE);
	}

	public int updatebookmark(Map<String, Object> map) {
		return sqlSession.update("Members.updatebookmark", map);
	}

}
