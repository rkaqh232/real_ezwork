package com.ez.work.service;


import java.util.List;


//혜정
//혜정

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ez.work.dao.MemberDAO;
import com.ez.work.domain.Member;


@Service
public class LoginMemberServiceImp implements LoginMemberService{
	
	@Autowired
	private MemberDAO dao;


	//MemberController에서 넘어옴 -> MemberDAO에서 insert 만들고...
	
	
	@Override
	public int isId(String id, String password) {
		Member rmember = dao.isId(id);
		int result= -1; // 아이디가 존재하지 않는 경우 - rmember가 null인 경우
		if(rmember !=null) { //아이디가 존재하는 경우
			if(rmember.getM_PASS().equals(password)) {
				result=1; //아이디와 비밀번호가 일치하는 경우
			}else
				result=0; //아이디는 존재하지만 비밀번호가 일치하지 않는 경우
		}
		return result;
	}


	@Override
	public int insert(Member m) {
		return dao.insert(m);
	}


	@Override
	public Member member_info(String id) {
		return dao.member_info(id);
	}
	
	
	@Override
	public int update(Member m) {
		return dao.update(m);
	}

	@Override
	public int isId(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void delete(String id) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public List<Member> getSearchList(int index, String search_word, int page, int limit) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public int getSearchListCount(int index, String search_word) {
		// TODO Auto-generated method stub
		return 0;
	}


}
