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
	
	public void tempMail(Mail mail) {
		dao.tempMail(mail);
	}

	public List<Mail> getInboxList(int page, int limit, String sender) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		int startrow = (page-1)*limit + 1;
		int endrow = startrow + limit -1;
		map.put("start", startrow);
		map.put("end", endrow);
		map.put("sender", sender);
		return dao.getInboxList(map);
	}
	
	public List<Mail> getOutboxList(int page, int limit, String sender) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		int startrow = (page-1)*limit + 1;
		int endrow = startrow + limit -1;
		map.put("start", startrow);
		map.put("end", endrow);
		map.put("sender", sender);
		return dao.getOutboxList(map);
	}
	
	public List<Mail> getTempboxList(int page, int limit, String sender) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		int startrow = (page-1)*limit + 1;
		int endrow = startrow + limit -1;
		map.put("start", startrow);
		map.put("end", endrow);
		map.put("sender", sender);
		return dao.getTempboxList(map);
	}

	public int getListCount(String id) {
		return dao.getListCount(id);
	}
	public int getOutListCount(String id) {
		return dao.getOutCount(id);
	}
	public int getTempListCount(String id) {
		return dao.getTempCount(id);
	}
	
	public Mail getDetail(int num) {
		if(setRCheckUpdate(num)!=1)
			return null;
		return dao.Indetail(num);
	}

	public int setRCheckUpdate(int num) {
		return dao.setRCheckUpdate(num);	//return 1이면 1줄 업데이트 된 것.
	}	
	
}
