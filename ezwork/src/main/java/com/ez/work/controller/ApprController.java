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
		int ap_count=0;
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
		
		System.out.println(appr.getFIRST_CODE());
		System.out.println("ApprinsertAction : "+appr.getSECOND_CODE());
		
		String[] str1= appr.getFIRST_CODE().split(" ");
		String[] str2= appr.getSECOND_CODE().split(" ");
		String[] str3= appr.getTHIRD_CODE().split(" ");
		
		if(str1.length==2) {
			appr.setM_PART_F(str1[0]);
			appr.setFIRST_CODE(str1[1]);	
			ap_count++;
		}else {
			appr.setM_PART_F("");
			appr.setFIRST_CODE("");	
		}
		
		if(str2.length==2) {
			appr.setM_PART_S(str2[0]);
			appr.setSECOND_CODE(str2[1]);
			ap_count++;
		}else {
			appr.setM_PART_S("");
			appr.setSECOND_CODE("");
		}
		
		if(str3.length==2) {
			appr.setM_PART_T(str3[0]);
			appr.setTHIRD_CODE(str3[1]);
			ap_count++;
		}else {
			appr.setM_PART_T("");
			appr.setTHIRD_CODE("");
		}
		System.out.println("총 결재자 수 : "+ap_count);
		System.out.println("insert appr : "+ appr);
		appr.setAPPR_COUNT(ap_count);
		appr.setAPPR_CUR_COUNT(0);
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
		int curCount = appr.getAPPR_CUR_COUNT(); //진행된 결재
		int count = 0;	//결재 순서
		int chkCode=-1;
		
		if(appr.getFIRST_CODE().equals(m_code)) {
			count=0;
		}else if(appr.getSECOND_CODE().equals(m_code)) {
			count=1;
		}else if(appr.getTHIRD_CODE().equals(m_code)) {
			count=2;
		}
		
		//진행된 결재와 현재 결재 순서가 같으면
		if(curCount==count) 
			chkCode=0; //결재할 순서
		else
			chkCode=1; //결재할 순서 아님
		
		
		if(appr != null) {
			System.out.println("appr detail view");
			mv.addObject("page", "appr/apprdetail.jsp");
			mv.addObject("apprdata", appr);
			mv.addObject("part",part);
			mv.addObject("name",name);
			mv.addObject("chkCode",chkCode);
			mv.setViewName("home");
			
		}else {
			System.out.println("appr detail view");
			mv.setViewName("error/error");
		}		
		return mv;
	}
	
	
	
}
