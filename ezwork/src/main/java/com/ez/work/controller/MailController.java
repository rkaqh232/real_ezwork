package com.ez.work.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MailController {
	
	@GetMapping(value="/inbox.mail")
	public String inbox(HttpServletRequest request, Model m) {
		m.addAttribute("page","mail/inbox.jsp");
		return "home";
	}
}
