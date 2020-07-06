package com.ez.work.service;

import java.util.HashMap;
import java.util.List;

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

	public List<Mail> getMailList(int page, int limit) {
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		int startrow = (page-1)*limit + 1;
		int endrow = startrow + limit -1;
		map.put("start", startrow);
		map.put("end", endrow);
		return dao.getMailList(map);
	}

	public int getListCount() {
		return dao.getListCount();
	}
	
}
