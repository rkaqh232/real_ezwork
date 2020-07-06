package com.ez.work.controller;

import java.io.PrintWriter;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ez.work.service.LoginMemberService;




/* 혜정  */
/* 혜정  */
/* 혜정  */
/* 혜정 */

@Controller
public class MemberController {
	
	@Autowired
	private LoginMemberService loginmemberservice; // MemberService로 이동해서 주입

	//로그인화면으로 이동
	@RequestMapping(value = "/login.net")
	public ModelAndView login(ModelAndView mv, @CookieValue(value = "saveid", required = false) Cookie readCookie)
			throws Exception {

		if (readCookie != null) {
			mv.addObject("saveid", readCookie.getValue());

			System.out.println("cookie time = " + readCookie.getMaxAge());
		}

		mv.setViewName("member/loginForm");
		return mv;
	}
	
	
	
	
	//사원등록페이지
	@GetMapping(value="/insert.hr")
	public String joinForm(HttpServletRequest request, Model m) {
		m.addAttribute("page","member/joinForm.jsp");
		return "home";
	}
	
	
	
	// 로그인 처리
	@RequestMapping(value = "/loginProcess.net", method = RequestMethod.POST)
	public String loginProcess(@RequestParam("id") String id, // 로그인값 넘어온것
				@RequestParam("password") String password,
				@RequestParam(value = "remember", defaultValue = "") String remember, // 체크하는거에요. 기본값 스트링이니까 빈값으로 넣어줬읍니다.
				HttpServletResponse response, HttpSession session) throws Exception {

			int result = loginmemberservice.isId(id, password); // 두개 넘겨줍니다.
			System.out.println("결과는 " + result);

			if (result == 1) { // 결과에 따라서 나머지 조건을 처리한겁니다. 리멤버를 체크한 경우와 아닌 경우 두가지를 설정할겁니다.

				// 로그인 성공
				session.setAttribute("id", id);
				Cookie savecookie = new Cookie("saveid", id);
				if (!remember.equals("")) {
					savecookie.setMaxAge(60 * 60);
					System.out.println("쿠키저장 : 60*60"); // 저장한 경우입니다.

				} else {
					System.out.println("쿠키저장 : 0");
					savecookie.setMaxAge(0); // 저장 안된 경우입니다.
				}
				response.addCookie(savecookie); // 모두 값을 담습니다.
				return "redirect:home"; // 그리고 리턴합니다. -> BoardController로 이동~

			} else {
				String message = "비밀번호가 일치하지 않습니다.";
				if (result == -1)
					message = "아이디가 존재하지 않습니다.";

				response.setContentType("text/html;charset=utf-8");
				PrintWriter out = response.getWriter();
				out.println("<script>");
				out.println("alert('" + message + "');");
				out.println("location.href='login.net';");
				out.println("</script>");
				out.close();
				return null;

			}
		}



}
