package com.ez.work.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ez.work.domain.Schedule;
import com.ez.work.service.ScheduleService;

@Controller
public class ScheduleController {
	
	@Autowired
	private ScheduleService scheduleService;

	@GetMapping(value="/calendar.sche")
	public String monthlySchedule(HttpServletRequest request, Model m) {
		m.addAttribute("page","schedule/calendar.jsp");
		return "home";
	}
	
	//일정 추가 버튼 클릭 Ajax
		@ResponseBody
		@RequestMapping(value = "/addSchedule", method = RequestMethod.POST)
		public Map<Object,Object> addSchedule(@RequestBody Schedule sche) throws Exception{
			Map<Object,Object>map = new HashMap<Object,Object>();
			scheduleService.addSchedule(sche);
			return map;
		}
	
}
