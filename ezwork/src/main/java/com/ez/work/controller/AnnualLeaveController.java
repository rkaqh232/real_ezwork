package com.ez.work.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AnnualLeaveController {

	// 휴가신청 화면
	@RequestMapping(value = "/Request.al")
	public ModelAndView RequestAL(ModelAndView mv) {
		mv.addObject("page", "annualleave/requestAL.jsp");
		mv.setViewName("home");
		return mv;
	}

	// 휴가관리 화면
	@RequestMapping(value = "/Personallist.al")
	public ModelAndView personnallistAL(ModelAndView mv) {
		mv.addObject("page", "annualleave/personallist.jsp");
		mv.setViewName("home");
		return mv;
	}

	// 부서별 휴가 현황 화면
	@RequestMapping(value = "/Teamlist.al")
	public ModelAndView teamlistAL(ModelAndView mv) {
		mv.addObject("page", "annualleave/teamlist.jsp");
		mv.setViewName("home");
		return mv;
	}

}
