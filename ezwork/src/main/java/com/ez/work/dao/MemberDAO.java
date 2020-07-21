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
		int result1 = sqlSession.insert("Members.insert", m);
		int result2 = sqlSession.insert("ALlist.insert",m);
		int result3 = sqlSession.insert("ALlist.update",m);
		sqlSession.update("ALlist.updateUnder");
		int result4 = sqlSession.update("ALlist.updateOver", m);
		sqlSession.update("ALlist.calHour");		
		if (result1 > 0 && result2 >0 && result3 >0 && result4 >0)
			return 1;
		else
			return 0;
		
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
