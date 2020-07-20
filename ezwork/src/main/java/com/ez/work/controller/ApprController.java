package com.ez.work.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ez.work.domain.Appr;
import com.ez.work.service.ApprServiceImpl;

/*영민*/

@Controller
public class ApprController {

	@Value("${apprfoldername}") 
	private String apprsaveFolder;
	
	@Autowired
	private ApprServiceImpl apprservice;
	
	
	@GetMapping(value="/wait.appr")
	public String inbox(HttpServletRequest request, Model m) {
		m.addAttribute("page","appr/appr.jsp");
		return "home";
	}
	
	@ResponseBody
	@PostMapping(value="/ApprListAjax.appr")
	public Map<String, Object> apprlist(HttpServletRequest request, ModelAndView mv,
			@RequestParam(value = "page", defaultValue = "1", required = false) int page,
			HttpSession session) {		
		String id = (String) session.getAttribute("id");		
		
		int limit = 10; 

		int listcount = apprservice.getListCount(); 

	
		int maxpage = (listcount + limit - 1) / limit;

		int startpage = ((page - 1) / 10) * 10 + 1;

		int endpage = startpage + 10 - 1;

		if (endpage > maxpage)
			endpage = maxpage;

		List<Appr> apprlist = apprservice.getApprList(page, limit, id); 

		Map<String, Object> map = new HashMap<String, Object>();
		System.out.println(apprlist);
		
		map.put("nowpage", page);
		map.put("maxpage", maxpage);
		map.put("startpage", startpage);
		map.put("endpage", endpage);
		map.put("listcount", listcount);
		map.put("apprlist", apprlist);
		map.put("limit", limit);		
		
		return map;
	}
	
	
}
