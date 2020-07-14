package com.ez.work.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ez.work.domain.Member;
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
			@RequestParam(value = "search_word", defaultValue = "") String search_word, Model m) throws Exception {

		List<Member> list = null;
		int listcount = 0;

		list = memberservice.getSearchList(index, search_word, page, limit);
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
	public @ResponseBody int addbookmark(@RequestParam("id") String id, @RequestParam("bookmark") int bookmark)
			throws Exception {
		// bookmark값이 null이면 0인지, 보낼 때 어떻게 보내는지, null인데 int형으로 넣을려고해서 오류가 나는지

		int m = memberservice.updatebookmark(id, bookmark); // bookmark값이 1인지 0인지 알아보기 위해

		return m; // 다시 ajax로 리턴, 넘어가는 값은 0 또는 1
	}
}
