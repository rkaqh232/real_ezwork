package com.ez.work.controller;


import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	public ModelAndView inbox(HttpServletRequest request, ModelAndView mv) {
		List<MeetingRoom> list = null;
		list = reserveService.getList();
		mv.setViewName("home");
		mv.addObject("page","reserve/meeting.jsp");
		mv.addObject("list", list);
		return mv;
	}
	
	@PostMapping("/ReserveAction.res")
	public ModelAndView mailadd(MeetingRoom meeting, ModelAndView mv, HttpServletResponse response) throws Exception{
		System.out.println("ReserveAction starts");
		
		System.out.println("meeting user info: " + meeting.getUSER_NAME());
		System.out.println("meeting subject: " + meeting.getMSUBJECT());
		
		int result = reserveService.insertM(meeting);
		PrintWriter out = response.getWriter();
		response.setContentType("text/html;charset=utf-8");
		if(result==0) {
			mv.setViewName("home");
			mv.addObject("page","reserve/meeting.jsp");
			return mv;
		} else {
			out.println("<script>alert('이미 예약된 시간입니다. 다른 회의실을 이용해주세요 ^ ^'); history.back()</script>");
			return null;
		}
	}
}
