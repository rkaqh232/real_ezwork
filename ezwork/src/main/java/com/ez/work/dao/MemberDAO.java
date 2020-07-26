package com.ez.work.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
		//int result2 = sqlSession.insert("ALlist.insertRe",m);
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
	
	public Member admin_info(String id) {
		return sqlSession.selectOne("Members.admin_idcheck",id);
	}


	public int update(Member m) {
		return sqlSession.update("Members.update",m);
	}
	
	//사원 검색 페이지2
	public List<Member> getSearchList2(Map<String, Object> map) {
		return sqlSession.selectList("Members.getSearchList2", map);
	}
	
	//사원 조회 페이지
	 public List<Member> getList(Map<String, Integer> map){
	      return sqlSession.selectList("Members.getList", map);
	   }


	public int getSearchListCount(Map<String, String> map) {
		return sqlSession.selectOne("Members.searchcount2", map);
	}
	
	

}
