package com.ez.work.service;
//민혁
import java.util.List;

import com.ez.work.domain.Member;

public interface MemberService {
	public List<Member> getSearchList(int index, String search_word, int page, int limit);
	public int getSearchListCount(int index, String search_word);
	public Member member_info(String M_CODE);

}
