package com.ez.work.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


/* ÇýÁ¤  */
/* ÇýÁ¤  */
/* ÇýÁ¤  */
/* ÇýÁ¤  */

@Controller
public class MemberController {
	
	
	//·Î±×ÀÎ
	@RequestMapping(value = "/login.net")
	public ModelAndView login(ModelAndView mv, @CookieValue(value = "saveid", required = false) Cookie readCookie)
			throws Exception {

		if (readCookie != null) {
			mv.addObject("saveid", readCookie.getValue());

			System.out.println("cookie time = " + readCookie.getMaxAge());
		}

		mv.setViewName("member/loginForm");
		return mv;
	}
	
	
	//»ç¿øµî·Ï
	@GetMapping(value="/insert.hr")
	public String joinForm(HttpServletRequest request, Model m) {
		m.addAttribute("page","member/joinForm.jsp");
		return "home";
	}
	


}
