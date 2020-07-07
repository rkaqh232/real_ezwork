package com.ez.work.service;

import java.util.List;

import com.ez.work.domain.EventBoard;

public class EventBoardServiceImpl implements EventBoardService{

	@Override
	public int getListCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<EventBoard> getBoardList(int page, int limit) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public EventBoard getDetail(int num) {
		// TODO Auto-generated method stub
		return null;
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
	public void insertBoard(EventBoard board) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int setReadCountUpdate(int num) {
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
