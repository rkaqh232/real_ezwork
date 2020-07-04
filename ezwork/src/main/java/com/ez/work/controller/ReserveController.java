package com.ez.work.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/*수진*/

@Controller
public class ReserveController {
	
	@GetMapping(value="/meeting.res")
	public String inbox(HttpServletRequest request, Model m) {
		m.addAttribute("page","reserve/meeting.jsp");
		return "home";
	}
}
