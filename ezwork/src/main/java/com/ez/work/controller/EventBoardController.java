package com.ez.work.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ez.work.domain.EventBoard;
import com.ez.work.service.EventBoardService;

@Controller
public class EventBoardController {
	@Autowired
	private EventBoardService eventboardService;

	// 글목록
	@GetMapping(value = "/BoardList.ev")
	public String boardList(HttpServletRequest request, Model m) {
		m.addAttribute("page", "eventboard/eventboard_list.jsp");
		return "home";
	}

	// 글쓰기화면
	@GetMapping(value = "/BoardWrite.ev")
	public String board_write(HttpServletRequest request, Model m) {
		m.addAttribute("page", "eventboard/eventboard_write.jsp");
		return "home";
	}

	@ResponseBody
	@RequestMapping(value = "/EventBoardListAjax.ev")
	public Map<String, Object> eventBoardListAjax(
			@RequestParam(value = "page", defaultValue = "1", required = false) int page,
			@RequestParam(value = "limit", defaultValue = "10", required = false) int limit, Model m) {

		int listcount = eventboardService.getListCount(); // 총 리스트 수를 받아옴

		// 총 페이지수
		int maxpage = (listcount + limit - 1) / limit;

		// 현재 페이지에 보여 줄 시작 페이지 수 (1, 11, 21 등...)
		int startpage = ((page - 1) / 10) * 10 + 1;

		// 현재 페이지에 보여줄 마지막 페이지 수 (10, 20, 30 등..)
		int endpage = startpage + 10 - 1;

		if (endpage > maxpage)
			endpage = maxpage;

		List<EventBoard> boardlist = eventboardService.getBoardList(page, limit); // 리스트를 받아옴

		Map<String, Object> map = new HashMap<String, Object>();

		map.put("page", page);
		map.put("maxpage", maxpage);
		map.put("startpage", startpage);
		map.put("endpage", endpage);
		map.put("listcount", listcount);
		map.put("boardlist", boardlist);
		map.put("limit", limit);

		return map;
	}
}