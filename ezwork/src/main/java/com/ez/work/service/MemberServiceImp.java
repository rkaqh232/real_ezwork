package com.ez.work.service;
//¹ÎÇõ - »ç¿ø Á¶È¸
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ez.work.dao.EmpDao;
import com.ez.work.domain.Member;

@Service
public class MemberServiceImp implements MemberService {

	@Autowired
	private EmpDao dao;

	@Override
	public List<Member> getSearchList(int index, String search_word, int page, int limit) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		if (index != -1) {
			String[] search_field = new String[] { "M_CODE", "M_PART_C", "M_NAME", "M_LEVEL" };
			map.put("search_field", search_field[index]);
			map.put("search_word", "%" + search_word + "%");
		}
		int startrow = (page - 1) * limit + 1;
		int endrow = startrow + limit - 1;
		map.put("start", startrow);
		map.put("end", endrow);
		return dao.getSearchList(map);
	}
	
	@Override
	public int getSearchListCount(int index, String search_word) {
		Map<String, String> map = new HashMap<String, String>();
		if (index != -1) {
			String[] search_field = new String[] { "M_CODE", "M_PART_C", "M_NAME", "M_LEVEL" };
			map.put("search_field", search_field[index]);
			map.put("search_word", "%" + search_word + "%");
		}
		return dao.getSearchListCount(map);
	}

	@Override
	public Member member_info(String M_CODE) {
		return dao.getSearchMemberInfo(M_CODE);
	}

}
