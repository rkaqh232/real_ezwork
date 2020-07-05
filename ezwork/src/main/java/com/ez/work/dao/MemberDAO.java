package com.ez.work.dao;

import java.util.List;
import java.util.Map;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ez.work.domain.Member;


/* 혜정  */
/* 혜정  */
/* 혜정  */

//MemberServiceImpl로 이동... 


@Repository
public class MemberDAO {
	
	
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int insert(Member m) {
		return sqlSession.insert("Members.insert", m);
		
	}
	/*
	 * public Member isId(String id) { //������ try/catch �ߴ�����.. return
	 * sqlSession.selectOne("Members.idcheck",id); // �̺κ��� mamber.xml ���� mapper
	 * Members }
	 * 
	 * 
	 * 
	 * public Member member_info(String id) { return
	 * sqlSession.selectOne("Members.idcheck",id); }
	 * 
	 * 
	 * public int update(Member m) { return sqlSession.update("Members.update",m); }
	 * 
	 * 
	 * 
	 * 
	 * public int delete(String id) { return sqlSession.delete("Members.delete",id);
	 * }
	 * 
	 * 
	 * 
	 * public List<Member> getSearchList(Map<String, Object> map) { return
	 * sqlSession.selectList("Members.getSearchList", map); }
	 * 
	 * 
	 * 
	 * 
	 * 
	 * public int getSearchListCount(Map<String, String> map) { return
	 * sqlSession.selectOne("Members.searchcount", map); }
	 * 
	 * 
	 * 
	 * 
	 * public List<Member> getList(Map<String, Integer> map){ return
	 * sqlSession.selectList("Members.list", map); }
	 * 
	 */
	

}
