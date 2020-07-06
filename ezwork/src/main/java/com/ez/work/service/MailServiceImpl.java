package com.ez.work.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ez.work.dao.MailDAO;
import com.ez.work.domain.Mail;

@Service
public class MailServiceImpl implements MailService{
	@Autowired
	private MailDAO dao;
	
	public void insertMail(Mail mail) {
		dao.insertMail(mail);
	}

}
