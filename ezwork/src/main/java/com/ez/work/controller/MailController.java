package com.ez.work.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.PrintWriter;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.ServletContext;
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

import com.ez.work.domain.Mail;
import com.ez.work.domain.Member;
import com.ez.work.service.CmtManageService;
import com.ez.work.service.MailService;

/*수진*/

@Controller
public class MailController {
	@Autowired
	private MailService mailService;
	
	@Value("${mailsavefoldername}")
	private String mailsaveFolder;	
	
	@GetMapping(value="/inbox.mail")
	public String inbox(HttpServletRequest request, HttpSession session, Model m) {
		String id = (String) session.getAttribute("M_CODE");
		int listcount=mailService.getTempListCount(id);
		m.addAttribute("tcount", listcount);
		m.addAttribute("page","mail/inbox.jsp");
		return "home";
	}
	
	@GetMapping(value="/outbox.mail")
	public String outbox(HttpServletRequest request, HttpSession session, Model m) {
		String id = (String) session.getAttribute("M_CODE");
		int listcount=mailService.getTempListCount(id);
		m.addAttribute("tcount", listcount);
		m.addAttribute("page","mail/outbox.jsp");
		return "home";
	}
	
	@GetMapping(value="/temp.mail")
	public String temp(HttpServletRequest request, HttpSession session, Model m) {
		String id = (String) session.getAttribute("M_CODE");
		int listcount=mailService.getTempListCount(id);
		m.addAttribute("tcount", listcount);
		m.addAttribute("page","mail/temp.jsp");
		return "home";
	}
	
	@GetMapping(value="/bin.mail")
	public String bin(HttpServletRequest request, HttpSession session, Model m) {
		String id = (String) session.getAttribute("M_CODE");
		int listcount=mailService.getTempListCount(id);
		m.addAttribute("tcount", listcount);
		m.addAttribute("page","mail/bin.jsp");
		return "home";
	}
	
	@PostMapping("/MailAddaction.mail")
	public void mailadd(Mail mail, HttpServletRequest request, HttpServletResponse response) throws Exception{
		System.out.println("file : "+mail.getM_FILE());
		MultipartFile uploadfile=mail.getUploadfile();
		if(!uploadfile.isEmpty()) {
			String fileName = uploadfile.getOriginalFilename();
			mail.setMAIL_ORIGINAL(fileName);
			
			Calendar c = Calendar.getInstance();
			int year = c.get(Calendar.YEAR);
			int month = c.get(Calendar.MONTH)+1;
			int date = c.get(Calendar.DATE);
			String homedir = mailsaveFolder + year + "-" +  month + "-" + date;
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
			//濡 쇰
			String refileName = "bbs"+year+month+date+random+"."+fileExtension;
			
			//ㅻ쇳 DB �λ 쇰
			String fileDBName = "/" + year +"-" + month + "-" + date + "/" + refileName;
			uploadfile.transferTo(new File(mailsaveFolder + fileDBName));
			mail.setMAIL_FILE(fileDBName);
		}
		mailService.insertMail(mail);
		System.out.println("sender: " + mail.getMAIL_SENDER());
		System.out.println("subject: " + mail.getMAIL_SUBJECT());
		PrintWriter out = response.getWriter();
		out.println("<script>history.back();</script>");
		out.close();
	}
	
	@PostMapping("/TempAddaction.mail")//異媛
	public String tmailadd(Mail mail, int num, HttpServletRequest request, HttpServletResponse response) throws Exception{
		System.out.println("file : "+mail.getM_FILE());
		MultipartFile uploadfile=mail.getUploadfile();
		if(!uploadfile.isEmpty()) {
			String fileName = uploadfile.getOriginalFilename();
			mail.setMAIL_ORIGINAL(fileName);
			
			Calendar c = Calendar.getInstance();
			int year = c.get(Calendar.YEAR);
			int month = c.get(Calendar.MONTH)+1;
			int date = c.get(Calendar.DATE);
			String homedir = mailsaveFolder + year + "-" +  month + "-" + date;
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
			//濡 쇰
			String refileName = "bbs"+year+month+date+random+"."+fileExtension;
			
			//ㅻ쇳 DB �λ 쇰
			String fileDBName = "/" + year +"-" + month + "-" + date + "/" + refileName;
			uploadfile.transferTo(new File(mailsaveFolder + fileDBName));
			mail.setMAIL_FILE(fileDBName);
		}
		mailService.insertMail(mail);
		mailService.tempDelete(num);
		System.out.println("temp mailnumber : " + num);
		System.out.println("sender: " + mail.getMAIL_SENDER());
		System.out.println("subject: " + mail.getMAIL_SUBJECT());
		return "redirect:temp.mail";
	}
	
	@GetMapping("MailFileDown.mail")
	 public void BoardFileDown(String filename, HttpServletRequest request, String original,
			 HttpServletResponse response) throws Exception {
		 String savePath = "resources/mailupload";
		 
		 //釉由우 ㅽ 寃 �蹂대� 닿�  媛泥대� 由ы댄.
		 ServletContext context = request.getSession().getServletContext();
		 String sDownloadPath = context.getRealPath(savePath);
		 
		 //String sFilePath = sDownloadPath + "\\" + fileName;
		 //"\" 異媛湲  "\\" ъ⑺.
		 String sFilePath = sDownloadPath + "/" + filename;
		 System.out.println(sFilePath);
		 
		 byte b[] = new byte[4096];
		 
		 //sFilePath  쇱 MimeType 援ы댁⑤.
		 String sMimeType = context.getMimeType(sFilePath);
		 System.out.println("sMimeType>>>" + sMimeType);
		 
		 if(sMimeType == null)
			 sMimeType = "application/octet-stream";
		 
		 response.setContentType(sMimeType);
		 
		 // 湲 쇰 源⑥ 寃 諛⑹
		 String sEncoding = new String(original.getBytes("utf-8"), "ISO-8859-1");
		 System.out.println(sEncoding);
		 
		 //Content-Disposition : attachment : 釉쇱곗 대 Content瑜 泥由ы吏 怨 ㅼ대寃 .
		 response.setHeader("Content-Disposition", "attachment; filename= "+ sEncoding);
		 try (
				 // 釉쇱곗濡 異� ㅽ몃┝ 깊.
				 BufferedOutputStream out2 = new BufferedOutputStream(response.getOutputStream());
				 //sFilePath濡 吏� 쇱  � ㅽ몃┝ 깊.
				 BufferedInputStream in = new BufferedInputStream(new FileInputStream(sFilePath));
				 ) {
			 int numRead;
			 //read (b, 0, b.length) : 諛댄 諛곗 b 0踰 遺 b.length ш린留 쎌댁⑤.
			 while ((numRead=in.read(b,0,b.length)) != -1) { //쎌 곗댄곌 議댁ы 寃쎌
				 //諛댄 諛곗 b 0踰遺 numReadш린 留 釉쇱곗濡 異�
				 out2.write(b,0,numRead);
			 }
		 } catch (Exception e) {
			 e.printStackTrace();
		 }
	 }
	
	@PostMapping("/Tempaction.mail")
	public void tempadd(Mail mail, HttpServletRequest request, HttpServletResponse response) throws Exception{
		System.out.println("tempaction");
		MultipartFile uploadfile=mail.getUploadfile();
		if(!uploadfile.isEmpty()) {
			String fileName = uploadfile.getOriginalFilename();
			mail.setMAIL_ORIGINAL(fileName);
			
			Calendar c = Calendar.getInstance();
			int year = c.get(Calendar.YEAR);
			int month = c.get(Calendar.MONTH)+1;
			int date = c.get(Calendar.DATE);
			String homedir = mailsaveFolder + year + "-" + "-" + date;
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
			//濡 쇰
			String refileName = "bbs"+year+month+date+random+"."+fileExtension;
			
			//ㅻ쇳 DB �λ 쇰
			String fileDBName = "/" + year +"-" + month + "-" + date + "/" + refileName;
			uploadfile.transferTo(new File(mailsaveFolder + fileDBName));
			mail.setMAIL_FILE(fileDBName);
		}
		mailService.tempMail(mail);
		PrintWriter out = response.getWriter();
		out.println("<script>history.back();</script>");
		out.close();
	}
	
	@ResponseBody
	@RequestMapping(value="/MailInboxAjax.mail")
	public Map<String, Object> InboxListAjax(
			@RequestParam(value="page", defaultValue="1", required=false) int page,
			@RequestParam(value="limit", defaultValue="10", required=false) int limit, HttpSession session)
	{
		String id = (String) session.getAttribute("M_CODE");
		int listcount=mailService.getListCount(id);
		int maxpage = (listcount+limit-1)/limit;
		int startpage = ((page-1)/10)*10+1;
		int endpage = startpage+10-1;
		
		if(endpage>maxpage)
			endpage = maxpage;
		
		List<Mail> maillist = mailService.getInboxList(page, limit, id);
		
		System.out.println("sender:"+id);
		System.out.println("listcount:" + listcount);
		System.out.println("listcount:" + listcount);
		//System.out.println("mailsubject : "+ maillist.get(0).getMAIL_SUBJECT());
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("sender",id);
		map.put("page",page);
		map.put("maxpage",maxpage);
		map.put("startpage",startpage);
		map.put("endpage",endpage);
		map.put("listcount",listcount);
		map.put("maillist",maillist);
		map.put("limit",limit);
		return map;
	}
	
	@ResponseBody
	@RequestMapping(value="/MailOutboxAjax.mail")
	public Map<String, Object> OutboxListAjax(
			@RequestParam(value="page", defaultValue="1", required=false) int page,
			@RequestParam(value="limit", defaultValue="10", required=false) int limit,
			HttpSession session)
	{
		String id = (String) session.getAttribute("M_CODE");
		int listcount=mailService.getOutListCount(id);
		int maxpage = (listcount+limit-1)/limit;
		int startpage = ((page-1)/10)*10+1;
		int endpage = startpage+10-1;
		
		if(endpage>maxpage)
			endpage = maxpage;
		
		List<Mail> maillist = mailService.getOutboxList(page, limit, id);
		
		System.out.println("sender:"+id);
		System.out.println("listcount:" + listcount);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("sender",id);
		map.put("page",page);
		map.put("maxpage",maxpage);
		map.put("startpage",startpage);
		map.put("endpage",endpage);
		map.put("listcount",listcount);
		map.put("maillist",maillist);
		map.put("limit",limit);
		return map;
	}
	
	@ResponseBody
	@RequestMapping(value="/MailBinAjax.mail")
	public Map<String, Object> BinListAjax(
			@RequestParam(value="page", defaultValue="1", required=false) int page,
			@RequestParam(value="limit", defaultValue="10", required=false) int limit,
			HttpSession session)
	{
		String id = (String) session.getAttribute("M_CODE");
		int listcount=mailService.getBinListCount(id);
		int maxpage = (listcount+limit-1)/limit;
		int startpage = ((page-1)/10)*10+1;
		int endpage = startpage+10-1;
		
		if(endpage>maxpage)
			endpage = maxpage;
		
		List<Mail> maillist = mailService.getBinList(page, limit, id);
		
		System.out.println("sender:"+id);
		System.out.println("listcount:" + listcount);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("sender",id);
		map.put("page",page);
		map.put("maxpage",maxpage);
		map.put("startpage",startpage);
		map.put("endpage",endpage);
		map.put("listcount",listcount);
		map.put("maillist",maillist);
		map.put("limit",limit);
		return map;
	}
	
	@ResponseBody
	@RequestMapping(value="/MailTempAjax.mail")
	public Map<String, Object> TempListAjax(
			@RequestParam(value="page", defaultValue="1", required=false) int page,
			@RequestParam(value="limit", defaultValue="10", required=false) int limit,
			HttpSession session)
	{
		String id = (String) session.getAttribute("M_CODE");
		int listcount=mailService.getTempListCount(id);
		int maxpage = (listcount+limit-1)/limit;
		int startpage = ((page-1)/10)*10+1;
		int endpage = startpage+10-1;
		
		if(endpage>maxpage)
			endpage = maxpage;
		
		List<Mail> maillist = mailService.getTempboxList(page, limit, id);
		
		System.out.println("sender:"+id);
		System.out.println("listcount:" + listcount);
		//System.out.println("mailsubject : "+ maillist.get(0).getMAIL_SUBJECT());
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("sender",id);
		map.put("page",page);
		map.put("maxpage",maxpage);
		map.put("startpage",startpage);
		map.put("endpage",endpage);
		map.put("listcount",listcount);
		map.put("maillist",maillist);
		map.put("limit",limit);
		return map;
	}
	
	@GetMapping(value="DetailAction.mail")
	public ModelAndView inDetail(int num, ModelAndView mv, HttpServletRequest request) {
		Mail mail = mailService.getDetail(num);
		if(mail == null) {
			System.out.println("mail view failed");
			mv.setViewName("error/error");
		}else {
			System.out.println("mail view start");
			mv.addObject("page", "mail/in_view.jsp");
			mv.addObject("maildata", mail);
			mv.setViewName("home");
		}		
		return mv;
	}
	
	@GetMapping(value="DetailTemp.mail")
	public ModelAndView tempDetail(int num, ModelAndView mv, HttpServletRequest request) {
		Mail mail = mailService.outDetail(num);
		if(mail == null) {
			System.out.println("mail view failed");
			mv.setViewName("error/error");
		}else {
			System.out.println("mail view start");
			mv.addObject("page", "mail/temp_view.jsp");
			mv.addObject("maildata", mail);
			mv.setViewName("home");
		}		
		return mv;
	}
	
	@GetMapping(value="DetailOut.mail")
	public ModelAndView outDetail(int num, ModelAndView mv, HttpServletRequest request) {
		Mail mail = mailService.outDetail(num);
		if(mail == null) {
			System.out.println("mail view failed");
			mv.setViewName("error/error");
		}else {
			System.out.println("mail view start");
			mv.addObject("page", "mail/out_view.jsp");
			mv.addObject("maildata", mail);
			mv.setViewName("home");
		}		
		return mv;
	}
	
	@GetMapping(value="DetailBin.mail")
	public ModelAndView binDetail(int num, ModelAndView mv, HttpServletRequest request) {
		Mail mail = mailService.outDetail(num);
		if(mail == null) {
			System.out.println("mail view failed");
			mv.setViewName("error/error");
		}else {
			System.out.println("mail view start");
			mv.addObject("page", "mail/out_view.jsp");
			mv.addObject("maildata", mail);
			mv.setViewName("home");
		}		
		return mv;
	}
	/*@PostMapping("Delete.mail")
	public ModelAndView MailDeleteAction(Mail mail, String before_file, int num, ModelAndView mv) {
		int result = mailService.mailDelete(num);
		if(result==0) {
			System.out.println();
			
		}
	}*/
	
	@PostMapping("InToBin.mail")
	public String IntoBin(int num) {
		int result = mailService.InToBin(num);
		if(result == 0) {
			System.out.println("硫 � ㅽ");
			return "redirect:error";
		}else {
			System.out.println("댁 대 깃났");
			return "redirect:inbox.mail";
		}
	}
	
	@PostMapping("OutToBin.mail")
	public String OuttoBin(int num) {
		int result = mailService.OutToBin(num);
		if(result == 0) {
			System.out.println("硫 � ㅽ");
			return "redirect:error";
		}else {
			System.out.println("댁 대 깃났");
			return "redirect:outbox.mail";
		}
	}
	
	@PostMapping("IntoBinAll.mail")
	public String IntoBinAll(String[] num, String before_file) {
		int result = 0;
		for (int i = 0; i < num.length; i++) {
			result += mailService.InToBin(Integer.parseInt(num[i]));
		}
		System.out.println(result + "媛 硫 댁듭쇰 대");
		return "redirect:inbox.mail";
	}
	
	@PostMapping("OuttoBinAll.mail")
	public String OuttoBinAll(String[] num, String before_file) {
		int result = 0;
		for (int i = 0; i < num.length; i++) {
			result += mailService.OutToBin(Integer.parseInt(num[i]));
		}
		System.out.println(result + "媛 硫 댁듭쇰 대");
		return "redirect:outbox.mail";
	}
	
	@PostMapping("TempDelete.mail")
	public String TempDelete(Mail mail, String before_file, int num,
			HttpServletResponse response, HttpServletRequest request) throws Exception {
		int result = mailService.tempDelete(num);
		if (result==0) {
			System.out.println("temp � ㅽ");
			return "redirect:error";
		}
		System.out.println("temp � 깃났");
		return "redirect:temp.mail";
	}
	
	@PostMapping("DeleteAll.mail")
	public String DeleteAll(String[] num, String before_file) {
		int result = 0;
		for (int i = 0; i < num.length; i++) {
			result += mailService.tempDelete(Integer.parseInt(num[i]));
		}
		System.out.println(result + "媛 硫 援ъ�");
		return "redirect:temp.mail";
	}
	
	@PostMapping("BinDeleteAll.mail")
	public String BinDeleteAll(String[] num, String before_file) {
		int result = 0;
		for (int i = 0; i < num.length; i++) {
			String mailt = num[i].substring(num[i].length()-4, num[i].length());
			int mailn = Integer.parseInt(num[i].substring(0, num[i].length()-4));
			System.out.println(mailt + "/" + mailn); 
			if(mailt.equals("sbin")){
				result += mailService.sentDelete(mailn);
			}else if(mailt.equals("rbin")) {
				result += mailService.receiptDelete(mailn);
			}
		}
		System.out.println(result + "媛 硫 援ъ�");
		return "redirect:bin.mail";
	}
	
}