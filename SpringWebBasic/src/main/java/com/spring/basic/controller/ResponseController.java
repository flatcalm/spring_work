package com.spring.basic.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.basic.model.UserVO;

@Controller
@RequestMapping("/response")
public class ResponseController {
	
	@GetMapping("/res-ex01")
	public void resEx01() {}
	
	/*
	 1. Model 객체를 사용하여 응답할 화면에 데이터를 전송하기.
	
	@GetMapping("/test")
	public void test(int age, Model model) {
		model.addAttribute("age", age);
		model.addAttribute("nick", "멍멍이");
	}
	 */
	
	// 2. @ModelAttribute를 사용한 화면에 데이터 전송 처리
	// @RequestParam + model.addAttribute처럼 동작
	@GetMapping("/test")
	public void test(@ModelAttribute("age") int age, Model model) {
//		model.addAttribute("age", age); 할 필요 X
		model.addAttribute("nick", "멍멍이");
	}
	
	@GetMapping("/test2")
	public void test2(@ModelAttribute("info") UserVO vo) {
		System.out.println("메서드 내의 콘솔 출력 : " + vo);
	}
	
	// 3. ModelAndView 객체를 활용한 처리
	@GetMapping("/test3")
	public ModelAndView test() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("userName", "김철수");
		mv.addObject("userAge", 30);
		mv.setViewName("/response/test3");
		
		return mv;
	}
	
	///////////////////////////////////////////////////////////////
	
	// Redirect 처리.
	
	// 폼 화면을 열어주는 메서드
	@GetMapping("/login")
	public String login() {
		System.out.println("/login : GET 요청 발생!");
		return "response/res-redirect-form";
	}
	
	@PostMapping("/login")
	public String login(@RequestParam("userId") String id,
						@RequestParam("userPw") String pw,
						@RequestParam("userPwChk") String pwChk) {
		
		System.out.println("/login : POST 요청 발생!");
		System.out.println("ID : " + id);
		System.out.println("PW : " + pw);
		System.out.println("CHK : " + pwChk);
		
		return "redirect:/response/login";
		
	}

}
