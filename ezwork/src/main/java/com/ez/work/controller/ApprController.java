package com.ez.work.controller;

import java.io.File;
import java.io.PrintWriter;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.ez.work.domain.Appr;
import com.ez.work.domain.Mail;
import com.ez.work.domain.Member;
import com.ez.work.service.ApprServiceImpl;

/*영민*/

@Controller
public class ApprController {

	@Value("${apprfoldername}") 
	private String apprsaveFolder;
	
	@Autowired
	private ApprServiceImpl apprservice;
	
	
	@GetMapping(value="/wait.appr")
	public String inbox(HttpServletRequest request, Model m, HttpSession session) {
		String m_code = (String) session.getAttribute("M_CODE");
		System.out.println("apprcontroller : "+ m_code);
		String part = apprservice.getPart(m_code);
		String name = apprservice.getName(m_code);
		List<Member> memberlist = apprservice.searchMemList("");
		
		m.addAttribute("memberlist",memberlist);
		m.addAttribute("part", part);
		m.addAttribute("name", name);
		m.addAttribute("code",m_code);
		m.addAttribute("page","appr/appr.jsp");
		return "home";
	}
	
	@ResponseBody
	@PostMapping(value="/ApprListAjax.appr")
	public Map<String, Object> apprlist(HttpServletRequest request, ModelAndView mv,
			@RequestParam(value = "page", defaultValue = "1", required = false) int page,
			HttpSession session) {		
		String id = (String) session.getAttribute("id");		
		
		int limit = 10; 
		int listcount = apprservice.getListCount(); 	
		int maxpage = (listcount + limit - 1) / limit;
		int startpage = ((page - 1) / 10) * 10 + 1;
		int endpage = startpage + 10 - 1;

		if (endpage > maxpage)
			endpage = maxpage;

		List<Appr> apprlist = apprservice.getApprList(page, limit, id); 

		Map<String, Object> map = new HashMap<String, Object>();
		System.out.println(apprlist);
		
		map.put("nowpage", page);
		map.put("maxpage", maxpage);
		map.put("startpage", startpage);
		map.put("endpage", endpage);
		map.put("listcount", listcount);
		map.put("apprlist", apprlist);
		map.put("limit", limit);		
		
		return map;
	}
	
	@ResponseBody
	@RequestMapping(value="/SearchMemAjax.appr")
	public Map<String, Object> searchmem(
			@RequestParam(value="keyword", defaultValue="", required=false) String keyword
			){
		
		int memcount = apprservice.getMemCount();
		List<Member> memberlist = apprservice.searchMemList(keyword);
		
		Map<String, Object> map = new HashMap<String,Object>();
		
		
		map.put("memcount",memberlist.size());
		map.put("memberlist",memberlist);		
		return map;
	}
	
	@RequestMapping(value="/Apprinsert.appr")
	public void appradd(Appr appr, HttpServletRequest request, HttpServletResponse response) throws Exception{
		MultipartFile uploadfile = appr.getUploadfile();
		if(!uploadfile.isEmpty()) {
			String fileName = uploadfile.getOriginalFilename();
			appr.setAPPR_ORIGIN(fileName);
			
			Calendar c = Calendar.getInstance();
			int year = c.get(Calendar.YEAR);
			int month = c.get(Calendar.MONTH)+1;
			int date = c.get(Calendar.DATE);
			String homedir = apprsaveFolder + year + "-" + "-" + date;
			System.out.println(homedir);
			File path1 = new File(homedir);
			if(!(path1.exists())) {
				path1.mkdir();
			}
			
			Random r = new Random();
			int random = r.nextInt(100000000);
			int index = fileName.lastIndexOf(".");
			System.out.println("index = " + index);
			String fileExtension = fileName.substring(index+1);
			//�깉濡쒖슫 �뙆�씪紐�
			String refileName = "bbs"+year+month+date+random+"."+fileExtension;
			
			//�삤�씪�겢 DB�뿉 ���옣�맆 �뙆�씪紐�
			String fileDBName = "/" + year +"-" + month + "-" + date + "/" + refileName;
			uploadfile.transferTo(new File(apprsaveFolder + fileDBName));
			appr.setAPPR_FILE(fileDBName);
		}
		if(appr.getFIRST_CODE()!=null) {
			String[] str= appr.getFIRST_CODE().split(" ");
			appr.setM_PART_F(str[0]);
			appr.setFIRST_CODE(str[1]);		
		}		
		if(appr.getSECOND_CODE()!="") {
			String[] str= appr.getSECOND_CODE().split(" ");
			appr.setM_PART_S(str[0]);
			appr.setSECOND_CODE(str[1]);
		}
		if(appr.getTHIRD_CODE()!="") {
			String[] str= appr.getTHIRD_CODE().split(" ");
			appr.setM_PART_T(str[0]);
			appr.setTHIRD_CODE(str[1]);
		}
		
		System.out.println("insert appr : "+ appr);
		apprservice.insertappr(appr);
		PrintWriter out = response.getWriter();
		out.println("<script>history.back();</script>");
		out.close();
	}
	
	@RequestMapping(value="/ApprDetailAction.appr")
	public ModelAndView apprdetail(HttpServletRequest request, ModelAndView mv, int num, HttpSession session) {
		Appr appr = apprservice.getDetail(num);
		String m_code = (String) session.getAttribute("M_CODE");
		System.out.println("apprcontroller : "+ m_code);
		String part = apprservice.getPart(m_code);
		String name = apprservice.getName(m_code);
		
		if(appr == null) {
			System.out.println("appr detail view");
			mv.setViewName("error/error");
		}else {
			System.out.println("appr detail view");
			mv.addObject("page", "appr/apprdetail.jsp");
			mv.addObject("apprdata", appr);
			mv.addObject("part",part);
			mv.addObject("name",name);
			mv.setViewName("home");
		}		
		return mv;
	}
	
	
	
}
