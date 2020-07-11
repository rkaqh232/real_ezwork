package com.ez.work.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CmtManageController {
	
	// 글쓰기화면
	@GetMapping(value = "/DailyCommute.cm")
	public String board_write(HttpServletRequest request, Model m) {
		m.addAttribute("page", "CmtManage/dailyCmt.jsp");
		return "home";
	}

}
