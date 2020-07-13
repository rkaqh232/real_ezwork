package com.ez.work.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ez.work.domain.CmtManage;
import com.ez.work.service.CmtManageService;


@Controller
public class CmtManageController {
	
	@Autowired
	private CmtManageService cmtManageService;
	
	// 홈화면
	@GetMapping(value = "/DailyCommute.cm")
	public String DailyCommute(HttpServletRequest request, Model m) {
		m.addAttribute("page", "CmtManage/dailyCmt.jsp");
		return "home";
	}
	
	//출근등록
	@GetMapping(value = "/OnTime.cm")
	public ModelAndView OnTime_ok(ModelAndView mv, CmtManage CmtManage, HttpServletResponse response, Model m) throws Exception {
		try {
		cmtManageService.insertOntime(CmtManage); // 저장 메서드 호출
			
		System.out.println("출근 등록 완료");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<script>");
		out.println("alert('출근 처리 되었습니다.');");
		out.println("location.href="+"'DailyCommute.cm';");
		out.println("</script>");
		out.close();
		
		}catch(Exception e) {
			System.out.println("출근 등록 실패");
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('이미 출근 처리 되었습니다.');");
			out.println("location.href="+"'DailyCommute.cm';");
			out.println("</script>");
			out.close();
		}
		return mv;
	}
	
	//퇴근등록
		@GetMapping("/OffTime.cm")
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
				out.println("location.href="+"'DailyCommute.cm';");
				out.println("</script>");
				out.close();
			}
			return mv;

		}
	
	
	//일일근태목록 list
	@GetMapping(value = "/CmtList.cm")
		public ModelAndView CmtList(ModelAndView mv, Model m) {
			List<CmtManage> Cmtlist = cmtManageService.getCmtList(); // 리스트를 받아옴
			m.addAttribute("page", "CmtManage/dailyCmt.jsp");
			mv.setViewName("home");
			mv.addObject("Cmtlist", Cmtlist);
			return mv;
		}

	

}
