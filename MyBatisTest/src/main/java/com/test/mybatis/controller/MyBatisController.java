package com.test.mybatis.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.test.mybatis.dao.MyBatisDAO;
import com.test.mybatis.dto.MyBatisDTO;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class MyBatisController {
	
	private final MyBatisDAO dao;
	
	@GetMapping("/m1.do")
	public String m1() {
		
		//반환값(X), 인자값(X)
		dao.m1();
		
		return "list";
	}
	
	@GetMapping("/m2.do")
	public String m2(Model model, String seq) {
		
		//반환값(X), 인자값(O) > 단일값
		//- delete from tblAddress where seq = ?
		
		//m2.do?seq=1
		
		//INFO : jdbc.sqlonly - delete from tblAddress where seq = '1' 
		
		int result = dao.m2(seq);
		
		model.addAttribute("result", result);
		
		return "list";
	}
	
	
	@GetMapping("/m3.do")
	public String m3(Model model) {
		
		//insert
		//- 다중 데이터 > Map or DTO
		Map<String, String> map = new HashMap<>();
		
		map.put("name", "아무개");
		map.put("age", "25");
		map.put("address", "서울시");
		map.put("gender", "m");
		
		//insert into tblAddress values (seqAddress.nextVal, '아무개', '25', '서울시', 'm') 
		int result = dao.m3(map);
		
		model.addAttribute("result", result);
		
		return "list";
	}
	
	
	@GetMapping("/add.do")
	public String add() {
		
		return "add";
	}
	
	@PostMapping("/addok.do")
	public String addok(Model model, MyBatisDTO dto) {
		
		int result = dao.add(dto);
		
		model.addAttribute("result", result);
		
		return "addok";
	}
	
	@GetMapping("/m4.do")
	public String m4(Model model) {
		
		//단일값 반환(1행 1열)
		//- select count(*) from tblAddress
		
		int count = dao.m4();
		
		model.addAttribute("count", count);
		
		return "list";
	}
	
	@GetMapping("/m5.do")
	public String m5(Model model, String seq) {
		
		//다중값 반환(1행)
		//select * from tblAddress where seq = ?
		
		MyBatisDTO dto = dao.m5(seq);
		
		model.addAttribute("dto", dto);
		
		return "list";
	}
	
	
	@GetMapping("/m6.do")
	public String m6(Model model) {
		
		//다중값 반환(N행 1열)
		//select name from tblAddress
		
		List<String> names = dao.m6();
		
		model.addAttribute("names", names);
		
		return "list";
	}
	
	@GetMapping("/m7.do")
	public String m7(Model model) {
		
		//다중값 반환(N행 N열)
		//select * from tblAddress
		
		List<MyBatisDTO> list = dao.m7();
		
		model.addAttribute("list", list);
		
		return "list";
	}
	
	@GetMapping("/m8.do")
	public String m8(Model model, String table) {
		
		//m8.do?table=tblAddress
		//- select count(*) from tblAddress
		
		//m8.do?table=tblMemo
		//- select count(*) from tblMemo
		
		//DB에 식별자를 전달하는 방법
		int count = dao.m8(table);
		
		model.addAttribute("count", count);
		
		return "list";		
	}
	
	@GetMapping("/m9.do")
	public String m9(Model model) {
		
		//select * from tblAddress where age > 25
		
		List<MyBatisDTO> list = dao.m9();
		
		model.addAttribute("list", list);
		
		return "list";
	}
	
	@GetMapping("/m10.do")
	public String m10(Model model, String search) {
		
		//select * from tblAddress where address like '%검색어%'
		List<MyBatisDTO> list = dao.m10(search);
		
		model.addAttribute("list", list);
		
		return "list";		
	}
	
	@GetMapping("/m11.do")
	public String m11(Model model, String gender) {
		
		//MyBatis + 동적쿼리
		//- SQL 작성 + 제어(JSTL과 유사)
		//- 동적으로 상황에 따른 SQL 작성할 수 있는 기능
		
		//if문
		//- 주로 where절의 일부를 조작할 때 많이 사용한다.
		
		//- m11.do?gender=m
		//- m11.do?gender=f
				
		List<MyBatisDTO> list = dao.m11(gender);
		
		model.addAttribute("list", list);		
		
		return "result";
	}
	
	@GetMapping("/m12.do")
	public String m12(Model model, String gender) {
		
		//gender 유/무
		//- m12.do?gender=m
		//- m12.do?gender=f
		//- m12.do
		
		//Cause: java.sql.SQLException: 실행할 SQL 문은 비어 있거나 널일 수 없음
		
		List<MyBatisDTO> list = dao.m12(gender);
		
		model.addAttribute("list", list);	
		
		return "result";
	}
	
	@GetMapping("/m13.do")
	public String m13(Model model, MyBatisDTO dto) {
		
		//gender or address 조건으로 사용
		//- m13.do?gender=m
		//- m13.do?address=강동구
		//- m13.do?gender=f&address=강남구
		//- m13.do
		List<MyBatisDTO> list = dao.m13(dto);
		
		model.addAttribute("list", list);	
		
		return "result";
	}
	
	@GetMapping("/m14.do")
	public String m14(Model model, Integer type) {
		
		//- m14.do?type=1 > select name, age
		//- m14.do?type=2 > select name, gender, address
		//- m14.do        > select *
				
		List<MyBatisDTO> list = dao.m14(type);
		
		model.addAttribute("list", list);	
		
		return "result";
	}
	
	@GetMapping("/m15.do")
	public String m15(Model model, String column, String word) {
		
		//검색
		//- m15.do?column=컬럼명&word=검색어
		
		//- m15.do?column=name&word=강아지	> 동등 비교
		//- m15.do?column=gender&word=m		> 동등 비교
		//- m15.do?column=seq&word=3		> 동등 비교
		
		//- m15.do?column=age&word=2		> 우위 비교
		
		//- m15.do?column=address&word=강동	> 패턴 비교
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("column", column);
		map.put("word", word);
		
		List<MyBatisDTO> list = dao.m15(map);
		
		model.addAttribute("list", list);
		
		return "result";
	}

}
















