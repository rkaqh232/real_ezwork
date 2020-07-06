package com.ez.work.service;

import java.util.List;

import com.ez.work.domain.Mail;

public interface MailService {
	public void insertMail(Mail mail);
	public List<Mail> getMailList(int page, int limit);
	public int getListCount();
}
