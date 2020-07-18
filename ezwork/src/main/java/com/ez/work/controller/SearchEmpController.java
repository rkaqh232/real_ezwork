package com.ez.work.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ez.work.domain.Member;
import com.ez.work.domain.bookmark;
import com.ez.work.service.MemberService;
//¹ÎÇõ

@Controller
public class SearchEmpController {

	@Autowired
	private MemberService memberservice;

	@RequestMapping(value = "/member_list", method = RequestMethod.GET)
	public ModelAndView memberList(@RequestParam(value = "page", defaultValue = "1", required = false) int page,
			@RequestParam(value = "limit", defaultValue = "3", required = false) int limit, ModelAndView mv,
			@RequestParam(value = "search_field", defaultValue = "-1") int index,
			@RequestParam(value = "search_word", defaultValue = "") String search_word, Model m, HttpSession session)
			throws Exception {

		List<Member> list = null;
		int listcount = 0;

		String owner = (String) session.getAttribute("id");
		list = memberservice.getSearchList(index, search_word, page, limit, owner);
		listcount = memberservice.getSearchListCount(index, search_word);

		int maxpage = (listcount + limit - 1) / limit;
		int startpage = ((page - 1) / 10) * 10 + 1;
		int endpage = startpage + 10 - 1;
		if (endpage > maxpage)
			endpage = maxpage;

		m.addAttribute("page", "Search/SearchEmp.jsp");
		mv.setViewName("home");
		mv.addObject("page1", page);
		mv.addObject("maxpage", maxpage);
		mv.addObject("startpage", startpage);
		mv.addObject("endpage", endpage);
		mv.addObject("listcount", listcount);
		mv.addObject("memberlist", list);
		mv.addObject("limit", limit);
		mv.addObject("search_field", index);
		mv.addObject("search_word", search_word);
		return mv;
	}

	@RequestMapping(value = "/member_info", method = RequestMethod.GET)
	public ModelAndView member_info(@RequestParam("m_code") String M_CODE, ModelAndView mv, Model n) throws Exception {
		Member m = memberservice.member_info(M_CODE);

		n.addAttribute("page", "Search/DetailEmp.jsp");
		mv.setViewName("home");
		mv.addObject("memberinfo", m);
		return mv;
	}

	@RequestMapping(value = "/updatebookmark", method = RequestMethod.GET)
	public @ResponseBody List<bookmark> updatebookmark(@RequestParam("id") String user, HttpSession session,
			@RequestParam("bookmark") int bookmark, ModelAndView mv, Model n) throws Exception {
		System.out.println("컨트롤러단에서의 bookmark값은 " + bookmark);

		String owner = (String) session.getAttribute("id"); // 로그인한 사람 id
		System.out.println("owner의 값은 " + owner);
		memberservice.choosebookmark(user, owner, bookmark); // 서비스측에 즐겨찾기 선택 당한 id와 선택한 id, 즐겨찾기 버튼 값을 보냄

		/*
		 * View단에서 즐겨찾기 버튼 누르면 user, owner, bookmark값 다 잘 넘어와서 insert는 되는데, 다시 누르면 삭제는
		 * 안되고 똑같은 값이 또 다시 추가되요. 아무도, View단의 bookmark값을 누름과 동시에 1로 갱신해줘야하는데, 누르면 컨트롤러로
		 * 넘어오는 bookmark값은 계속 0이여서 그런거 같아요. 어떻게 하면 View단의 bookmark값을 db의 값과 일치시킬 수 있을까요?
		 */
		List<bookmark> bminf = memberservice.bookmarklist(owner);
		n.addAttribute("page", "Search/SearchEmp.jsp");
		mv.setViewName("home");
		mv.addObject("bminf", bminf);
		/*
		 * System.out.println("bminf의 bookmark값은 " + bminf.get(0).getM_BOOKMARK());
		 * System.out.println("bminf의 user값은 " + bminf.get(0).getM_CODE());
		 * System.out.println("bminf의 owner값은 " + bminf.get(0).getM_OWNER());
		 */
		return bminf;

	}

}
