package com.ez.work.controller;

import java.io.File;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

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

import com.ez.work.domain.Mail;
import com.ez.work.service.MailService;

/*수진*/

@Controller
public class MailController {
	@Autowired
	private MailService mailService;
	
	@Value("${mailsavefoldername}")
	private String mailsaveFolder;	
	
	@GetMapping(value="/inbox.mail")
	public String inbox(HttpServletRequest request, Model m) {
		m.addAttribute("page","mail/inbox.jsp");
		return "home";
	}
	
	@GetMapping(value="/outbox.mail")
	public String outbox(HttpServletRequest request, Model m) {
		m.addAttribute("page","mail/outbox.jsp");
		return "home";
	}
	
	@GetMapping(value="/temp.mail")
	public String temp(HttpServletRequest request, Model m) {
		m.addAttribute("page","mail/temp.jsp");
		return "home";
	}
	
	@GetMapping(value="/bin.mail")
	public String bin(HttpServletRequest request, Model m) {
		m.addAttribute("page","mail/bin.jsp");
		return "home";
	}
	
	@PostMapping("/MailAddaction.mail")
	public String mailadd(Mail mail, HttpServletRequest request) throws Exception{
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
			//새로운 파일명
			String refileName = "bbs"+year+month+date+random+"."+fileExtension;
			
			//오라클 DB에 저장될 파일명
			String fileDBName = "/" + year +"-" + month + "-" + date + "/" + refileName;
			uploadfile.transferTo(new File(mailsaveFolder + fileDBName));
			mail.setMAIL_FILE(fileDBName);
		}
		mailService.insertMail(mail);
		return "redirect:inbox.mail";
	}
	
	@ResponseBody
	@RequestMapping(value="/MailListAjax.mail")
	public Map<String, Object> mailListAjax(
			@RequestParam(value="page", defaultValue="1", required=false) int page,
			@RequestParam(value="limit", defaultValue="10", required=false) int limit)
	{
		int listcount=mailService.getListCount();
		int maxpage = (listcount+limit-1)/limit;
		int startpage = ((page-1)/10)*10+1;
		int endpage = startpage+10-1;
		
		if(endpage>maxpage)
			endpage = maxpage;
		
		List<Mail> maillist = mailService.getMailList(page, limit);
		
		System.out.println("listcount:" + listcount);
		System.out.println("maillist : "+ maillist.get(0).getMAIL_SENDER());
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("page",page);
		map.put("maxpage",maxpage);
		map.put("startpage",startpage);
		map.put("endpage",endpage);
		map.put("listcount",listcount);
		map.put("maillist",maillist);
		map.put("limit",limit);
		return map;
	}
	
}
