package com.ez.work.service;

import java.util.List;

import com.ez.work.domain.Appr;
import com.ez.work.domain.Member;

public interface ApprService {

	public int getListCount();
	public List<Appr> getApprList(int page, int limit, String id);
	public String getPart(String m_code);
	public String getName(String m_code);
	public List<Member> searchMemList(String keyword);
	public int getMemCount();
	public void insertappr(Appr appr);
	public Appr getDetail(int num);
	public void updateApproval(int apnum, String valcol, int approve_val, String commcol, String comment);
	public void updateApprovalR(int apnum, String valcol, int approve_val, String commcol, String comment);
}
