package com.ez.work.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ez.work.domain.CmtManage;
import com.ez.work.domain.Member;

@Repository
public class CmtManageDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<CmtManage> getCmtList(HashMap<String, Integer> map) {
		// TODO Auto-generated method stub
		return null;
	}

	public void insertOntime(CmtManage cmtManageOn) {
		 sqlSession.insert("CmtManage.insert", cmtManageOn);
	}

	public int insertOfftime(CmtManage cmtManageOff) {
		return sqlSession.update("CmtManage.modify", cmtManageOff);
	}

	public int insertOvertime(CmtManage cmtManageOver) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int insertConfirm(CmtManage cmtManageConfirm) {
		// TODO Auto-generated method stub
		return 0;
	}

	public CmtManage getDetail(String m_code) {
		return sqlSession.selectOne("CmtManage.Detail", m_code);
	}

	public Member getInfo(String m_code) {
		return sqlSession.selectOne("Members.EmpCheck", m_code);
	}

}
