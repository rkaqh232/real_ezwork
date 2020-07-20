package com.ez.work.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ez.work.domain.ALRequest;
import com.ez.work.domain.Member;
import com.ez.work.service.AnnualLeaveService;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

@Controller
public class AnnualLeaveController {

	@Autowired
	private AnnualLeaveService annualLeaveSerivice;

	// 휴가신청 화면
	@RequestMapping(value = "/Request.al")
	public ModelAndView RequestAL(ModelAndView mv, HttpSession session) {
		String id = (String) session.getAttribute("id");
		Member memberinfo = annualLeaveSerivice.getInfo(id); // 로그인 된 id정보 가져오기
		mv.addObject("page", "annualleave/requestAL.jsp");
		mv.setViewName("home");
		mv.addObject("memberinfo", memberinfo);

		return mv;
	}

	// 휴가 등록
	@RequestMapping(value = "/RequestInsert.al", method = RequestMethod.POST)
	public void RequestALInsert(ALRequest alrequest, HttpServletResponse response) throws Exception {
		int result = annualLeaveSerivice.insertAL(alrequest);

		if (result == 1) {
			System.out.println("휴가 신청 등록 완료");
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('휴가 신청이 완료되었습니다.');");
			out.println("location.href=" + "'Request.al';");
			out.println("</script>");
			out.close();
		} else {
			System.out.println("휴가 신청 등록 실패");
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('휴가 신청이 등록되지 않았습니다.');");
			out.println("location.href=" + "'Request.al';");
			out.println("</script>");
			out.close();
		}
	}

	// 부서별 월간 휴가 현황 화면
	@RequestMapping(value = "/Teamlist.al")
	public ModelAndView teamlistAL(ModelAndView mv, HttpSession session, ALRequest alrequest) {
		String id = (String) session.getAttribute("id");
		Member memberinfo = annualLeaveSerivice.getInfo(id); // 로그인 된 id정보 가져오기
		List<ALRequest> teamInfo = annualLeaveSerivice.getTeamInfo(memberinfo.getM_PART_C());
		
		if(teamInfo.size() !=0){
		JsonArray teamInfoarray = new JsonArray();
		
		for(int i=0; i<teamInfo.size(); i++) {
			JsonObject jsonObject = new JsonObject();
			jsonObject.addProperty("title", teamInfo.get(i).getAL_M_NAME());
			jsonObject.addProperty("start", teamInfo.get(i).getAL_STARTDATE());
			jsonObject.addProperty("end", teamInfo.get(i).getAL_ENDDATE());
			jsonObject.addProperty("backgroundColor", "orange");
			jsonObject.addProperty("description", teamInfo.get(i).getAL_REASON());
			teamInfoarray.add(jsonObject);
		}
		System.out.println(teamInfoarray);
		mv.addObject("teamInfoarray", teamInfoarray);
		}
		
		mv.addObject("page", "annualleave/teamlist.jsp");
		mv.addObject("memberinfo", memberinfo);
		mv.setViewName("home");
		
		return mv;
	}

	// 휴가 신청 내역 list
	@RequestMapping(value = "/Personallist.al")
	public ModelAndView personnallistAL(@RequestParam(value = "page", defaultValue = "1", required = false) int page,
			ModelAndView mv, HttpSession session) {
		String id = (String) session.getAttribute("id");
		Member memberinfo = annualLeaveSerivice.getInfo(id); // 로그인 된 id정보 가져오기
		
		int limit = 10;
		int listcount = annualLeaveSerivice.getListCount();

		// 총 페이지수
		int maxpage = (listcount + limit - 1) / limit;

		// 시작 페이지수
		int startpage = ((page - 1) / 10) * 10 + 1;

		// 마지막 페이지수
		int endpage = startpage + 10 - 1;

		if (endpage > maxpage)
			endpage = maxpage;

		List<ALRequest> allist = annualLeaveSerivice.getRequestList(page, limit); // 리스트를 받아옴

		mv.setViewName("home");
		mv.addObject("page", "annualleave/personallist.jsp");
		mv.addObject("page1", page);
		mv.addObject("maxpage", maxpage);
		mv.addObject("startpage", startpage);
		mv.addObject("endpage", endpage);
		mv.addObject("listcount", listcount);
		mv.addObject("allist", allist);
		mv.addObject("limit", limit);
		mv.addObject("memberinfo", memberinfo);
		return mv;

	}
}
