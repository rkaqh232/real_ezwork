package com.ez.work.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
	public ModelAndView apprlist(HttpServletRequest request, ModelAndView mv,
			@RequestParam(value = "page", defaultValue = "1", required = false) int page) {		
		
		int limit = 10; 

		int listcount = apprservice.getListCount(); 

	
		int maxpage = (listcount + limit - 1) / limit;

		int startpage = ((page - 1) / 10) * 10 + 1;

		int endpage = startpage + 10 - 1;

		if (endpage > maxpage)
			endpage = maxpage;

		List<Appr> apprlist = apprservice.getApprList(page, limit); 

		
		mv.addObject("nowpage", page);
		mv.addObject("maxpage", maxpage);
		mv.addObject("startpage", startpage);
		mv.addObject("endpage", endpage);
		mv.addObject("listcount", listcount);
		mv.addObject("apprlist", apprlist);
		mv.addObject("limit", limit);
		mv.addObject("page","appr/appr.jsp");
		
		
		mv.setViewName("home");
		return null;
	}
	
	
}
