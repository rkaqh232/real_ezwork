package com.ez.work.controller;


import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ez.work.domain.MeetingRoom;
import com.ez.work.service.ReserveService;

/*수진*/

@Controller
public class ReserveController {
	@Autowired
	private ReserveService reserveService;
	
	@GetMapping(value="/meeting.res")
	public String inbox(HttpServletRequest request, Model m) {
		m.addAttribute("page","reserve/meeting.jsp");
		return "home";
	}
	
	@PostMapping("/ReserveAction.res")
	public ModelAndView mailadd(ModelAndView mv, MeetingRoom meeting, HttpServletResponse response) throws Exception{
		int result = reserveService.insertM(meeting);
		PrintWriter out = response.getWriter();
		if(result==0) {
			mv.setViewName("home");
			mv.addObject("page","reserve/meeting.jsp");
			out.println("<script>alert('예약이 완료되었습니다.');</script>");
		} else {
			mv.setViewName("home");
			mv.addObject("page","reserve/meeting.jsp");
			out.println("<script>alert('이미 예약된 시간입니다.');</script>");
		}
		return mv;
	}
}
