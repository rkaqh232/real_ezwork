package com.ez.work.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ez.work.dao.EventBoardDAO;
import com.ez.work.domain.EventBoard;
@Service
public class EventBoardServiceImpl implements EventBoardService{
	
	@Autowired
	private EventBoardDAO dao;
	
	//글 개수
	@Override
	public int getListCount() {
		return dao.getListCount();
	}
	
	//글 목록
	@Override
	public List<EventBoard> getBoardList(int page, int limit) {
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		int startrow = (page - 1) * limit + 1;
		int endrow = startrow + limit - 1;
		map.put("start", startrow);
		map.put("end", endrow);
		return dao.getBoardList(map);
	}

	//글 삽입
	@Override
	public void insertBoard(EventBoard board) {
		dao.insertBoard(board);
	}
	
	//글 조회수
	@Override
	public int setReadCountUpdate(int num) {
		return dao.setReadCountUpdate(num);
	}
	
	//글 상세보기
	@Override
	public EventBoard getDetail(int num) {
		if (setReadCountUpdate(num) != 1)
			return null;
		return dao.getDetail(num);
	}

	@Override
	public int boardReply(EventBoard board) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int boardModify(EventBoard modifyboard) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int boardDelete(int num) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean isBoardWriter(int num, String pass) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public int boardReplyUpdate(EventBoard board) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert_deleteFile(String before_file) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<String> getDeleteFileList() {
		// TODO Auto-generated method stub
		return null;
	}

}
