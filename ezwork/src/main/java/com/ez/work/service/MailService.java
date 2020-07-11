package com.ez.work.service;

import java.util.List;

import com.ez.work.domain.Mail;

public interface MailService {
	public void insertMail(Mail mail);
	public void tempMail(Mail mail);
	public List<Mail> getInboxList(int page, int limit, String sender);
	public List<Mail> getOutboxList(int page, int limit, String sender);
	public List<Mail> getTempboxList(int page, int limit, String sender);
	public List<Mail> getBinList(int page, int limit, String sender, String receiver);
	public int getListCount(String id);
	public int getOutListCount(String id);
	public int getBinListCount(String id);
	public int getTempListCount(String id);
	public Mail getDetail(int num);
	public int setRCheckUpdate(int num);
	public int InToBin(int num);
}
