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
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.ez.work.domain.CmtManage;
import com.ez.work.domain.Member;
import com.ez.work.service.CmtManageService;


@Controller

public class CmtManageController {
	
	@Autowired
	private CmtManageService cmtManageService;
	
	// 홈화면
	@GetMapping(value = "/DailyCommute.cm")
	public ModelAndView DailyCommute(HttpServletRequest request, 
			ModelAndView mv, HttpSession session, @RequestParam(value="check", defaultValue="0" )int check) {
		String id = (String) session.getAttribute("id");
		Member memberinfo = cmtManageService.getInfo(id);
		CmtManage memberinfo2 = cmtManageService.getDetail(id);
		mv.setViewName("home");
		mv.addObject("page", "CmtManage/dailyCmt.jsp");
		mv.addObject("memberinfo", memberinfo);		
		mv.addObject("memberinfo2", memberinfo2);
		if(memberinfo2 == null) {
			check = 0;
		}else {
			if(memberinfo2.getCM_OFFTIME() == null)
				check=1;
			else
				check = 2;
		}
		
		mv.addObject("check", check);
		return mv;
	}
	
	//출근등록
	@PostMapping(value = "/OnTime.cm")
	public void OnTime_ok(ModelAndView mv, CmtManage CmtManage, Member member, HttpServletResponse response) throws Exception {
		System.out.println(member.getM_CODE());
		CmtManage result = cmtManageService.getDetail(member.getM_CODE());
		
		if(result == null) {
		cmtManageService.insertOntime(CmtManage); // 저장 메서드 호출
		System.out.println("출근 등록 완료");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<script>");
		out.println("alert('출근 처리 되었습니다.');");
		out.println("location.href="+"'DailyCommute.cm?check=1';");
		out.println("</script>");
		out.close();
		
		
		}else {
			System.out.println("출근 등록 실패");
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('금일 근태 등록은 완료되었습니다.');");
			out.println("location.href="+"'DailyCommute.cm?check=0';");
			out.println("</script>");
			out.close();
		}
	}
	
	//퇴근등록
	@PostMapping("/OffTime.cm")
		public ModelAndView OffTime_ok(CmtManage CmtManage, ModelAndView mv, HttpServletRequest request,
				HttpServletResponse response, Model m) throws Exception {
			//퇴근 메소드 호출
			int result = cmtManageService.insertOfftime(CmtManage);

			// 퇴근 등록 실패한 경우
			if (result == 0) {
				System.out.println("퇴근 등록 실패");
				mv.setViewName("error/error");
				mv.addObject("url", request.getRequestURI());
				mv.addObject("message", "퇴근 등록 실패");
			} else { // 퇴근 등록 성공의 경우
				System.out.println("퇴근 등록 완료");
				response.setContentType("text/html;charset=utf-8");
				PrintWriter out = response.getWriter();
				out.println("<script>");
				out.println("alert('퇴근 처리 되었습니다.');");
				out.println("location.href="+"'DailyCommute.cm?check=2';");
				out.println("</script>");
				out.close();
			}
			return mv;

		}
	
	
	//일일근태목록 list
	@GetMapping(value = "/CmtList.cm")
		public ModelAndView CmtList(ModelAndView mv) {
			List<CmtManage> Cmtlist = cmtManageService.getCmtList(); // 리스트를 받아옴
			mv.setViewName("home");
			mv.addObject("page", "CmtManage/dailyCmt.jsp");
			mv.addObject("Cmtlist", Cmtlist);
			return mv;
		}
	
	//@GetMapping(value = "/GetDetail.cm")
	
	
	

	

}
