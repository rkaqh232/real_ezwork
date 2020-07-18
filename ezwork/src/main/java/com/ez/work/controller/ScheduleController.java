package com.ez.work.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ez.work.domain.Member;
import com.ez.work.domain.Schedule;
import com.ez.work.service.ScheduleService;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

@Controller
public class ScheduleController {
	
	@Autowired
	private ScheduleService scheduleService;

	@GetMapping(value="/calendar.sche")
	public ModelAndView monthlySchedule(HttpServletRequest request, ModelAndView mv, Model m, HttpSession session) throws Exception {
		//addSchedule 결과를 뽑는다.
		//addAtrribute 저장 결과를 json형식으로 뿌림
		String id = (String) session.getAttribute("id");
		Member memberinfo = scheduleService.getInfo(id);
		List<Schedule> scheduleList = scheduleService.showSchedule();
		
		if(scheduleList.size() !=0){
			System.out.println(scheduleList.get(0).getSCH_STARTDATE());
		JsonArray schearray = new JsonArray();
		
		for(int i=0; i<scheduleList.size(); i++) {
			JsonObject jsonObject = new JsonObject();
			jsonObject.addProperty("title", scheduleList.get(i).getSCH_TITLE());
			jsonObject.addProperty("start", scheduleList.get(i).getSCH_STARTDATE());
			jsonObject.addProperty("end", scheduleList.get(i).getSCH_ENDDATE());
			jsonObject.addProperty("backgroundColor", scheduleList.get(i).getSCH_COLOR());
			jsonObject.addProperty("id", scheduleList.get(i).getSCH_NO());
			jsonObject.addProperty("description", scheduleList.get(i).getSCH_NO());
			schearray.add(jsonObject);
		}
		System.out.println(schearray);
		mv.addObject("schearray", schearray);
		}
		mv.addObject("Schedulelist", scheduleList);
		mv.addObject("page","schedule/calendar.jsp");
		mv.setViewName("home");
		mv.addObject("memberinfo", memberinfo);		
		return mv;
	}
	
	//일정 추가 버튼 클릭
		@RequestMapping(value = "/addSchedule.sche", method = RequestMethod.GET)
		public void addSchedule(Schedule sche, HttpServletRequest request, ModelAndView mv, HttpServletResponse response
				) throws Exception{
			
			System.out.println(sche.getSCH_TITLE());
			int result = scheduleService.addSchedule(sche);
			
			// 일정 등록 실패한 경우
			if (result == 0) {
				System.out.println("일정 등록 실패");
				mv.setViewName("error/error");
				mv.addObject("url", request.getRequestURI());
				mv.addObject("message", "일정 등록 실패");
			} else { // 일정 등록 성공의 경우
				System.out.println("일정 등록 완료");
				response.setContentType("text/html;charset=utf-8");
				PrintWriter out = response.getWriter();
				out.println("<script>");
				out.println("alert('일정 등록이 되었습니다.');");
				out.println("location.href="+"'calendar.sche';");
				out.println("</script>");
				out.close();
			}
		}
		
		@RequestMapping(value = "/getScheduleDetail.sche", method = RequestMethod.POST)
		@ResponseBody
		public Schedule getDetailSchedule(@RequestParam (value = "scheduleNo") int scheduleNo) throws Exception{
			System.out.println("no" + scheduleNo);
			return null;
		}
		
}
