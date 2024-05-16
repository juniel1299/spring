package com.test.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class Ex08Controller {

	//1. String
	//- JSP 파일 경로
	//- ViewResolver 호출
//	@GetMapping("/ex08.do")
//	public String ex08() {
//		
//		return "ex08";
//	}
	
	//2. void
	//- 가상 주소와 동일한 JSP 페이지가 호출
//	@GetMapping("/ex08.do")
//	public void ex08() {
//		
//		System.out.println("페이지 호출");
//		
//		//뷰 호출
//		//return "ex08";
//	}
	
	
	//3. String 키워드
	//- "redirect:URL" > resp.sendRedirect(URL)
	//- "forward:URL" > pageContext.forward(URL)
	@GetMapping("/ex08.do")
	public String ex08(RedirectAttributes rttr) {
		
		rttr.addAttribute("seq",10);
		rttr.addAttribute("mode","del");
		
		// add.do?seq=10&mode=del
		return "redirect:/add.do";
	}
	
}























