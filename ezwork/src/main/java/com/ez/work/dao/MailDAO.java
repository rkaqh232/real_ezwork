package com.ez.work.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ez.work.domain.Mail;

@Repository
public class MailDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public void insertMail(Mail mail) {
		sqlSession.insert("Mails.insert", mail);
	}
	
	public List<Mail> getMailList(HashMap<String, Integer> map){
		return sqlSession.selectList("Mails.list", map);
	}
	
	public int getListCount() {
		return sqlSession.selectOne("Mails.count");
	}
}
