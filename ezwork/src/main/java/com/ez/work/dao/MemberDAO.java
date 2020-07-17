package com.ez.work.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ez.work.domain.Member;


/* 혜정  */
/* 혜정  */
/* 혜정  */

//LoginServiceImpl로 이동... 


@Repository
public class MemberDAO {
	
	
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	public int insert(Member m) {
		return sqlSession.insert("Members.insert", m);
		
	}

	public Member isId(String id) {
		return sqlSession.selectOne("Members.idcheck",id);// 이부분이 mamber.xml 에서 mapper Members
		
	}
	
	public Member member_info(String id) {
		return sqlSession.selectOne("Members.idcheck",id);
	}


	public int update(Member m) {
		return sqlSession.update("Members.update",m);
	}

}
