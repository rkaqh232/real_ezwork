package com.ez.work.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ScheduleController {

	@GetMapping(value="/calendar.sche")
	public String monthlySchedule(HttpServletRequest request, Model m) {
		m.addAttribute("page","schedule/calendar.jsp");
		return "home";
	}
}
