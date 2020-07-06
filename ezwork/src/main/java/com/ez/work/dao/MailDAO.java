package com.ez.work.dao;

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
}
