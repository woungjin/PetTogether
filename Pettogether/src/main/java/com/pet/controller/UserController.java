package com.pet.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.pet.command.UserVO;
import com.pet.user.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	@Qualifier("userService")
	private UserService userService;
	
	@RequestMapping("/userAdd") 
	public String userAdd() {
		return "user/userAdd";
	}
	
	@RequestMapping("/userLogin")
	public String userLogin() {
		return "user/userLogin";
	}
	
	
	@RequestMapping("/userJoin")
	public String userJoin() {
		return "user/userJoin";
	}

	// 유저 마이페이지
	@RequestMapping("userMypage")
	public String userMypage() {
		return "user/userMypage";
	}
	// 마이페지이안에서 수정부분
	@RequestMapping("userMypageModify")
	public String userMyModify() {
		return "user/userMypageModify";
	}
	// 마이페이지 안에서 찜 목록 부분
	@RequestMapping("userMypageHeart")
	public String userMypageHeart() {
		return "user/userMypageHeart";
	}

	// 마이페이지 안에서 리뷰 글 부분
	@RequestMapping("userMypageReview")
	public String userMypageReview() {
		return "user/userMypageReview";
	}

	@ResponseBody	// 응답요청을 뷰 리졸버가 아닌 요청이 들어온곳으로 response header정보를 만들어서 보내준다.
	@RequestMapping(value="/idCheck",method=RequestMethod.POST)
	public int idCheck(@RequestBody UserVO vo) {		
		
		
		// 회원가입 중복체크
		// result는 중복이 아니면 0, 중복이라면 1
		int result = userService.idCheck(vo);
		
		return result;
	}
	
	// 회원가입 메서드
	@RequestMapping(value="/join",method=RequestMethod.POST)
	public String join(UserVO vo,RedirectAttributes RA) {
		
		int result = userService.join(vo);
		if(result == 1) {
			RA.addFlashAttribute("msg", "가입을 축하합니다");
		}else {
			RA.addFlashAttribute("msg", "가입에 실패했습니다.다시 시도해주세요.");
		}
		return "redirect:/user/userLogin";
		
	}
	// 로그인 메서드
		@RequestMapping(value="/login",method=RequestMethod.POST)
		public String userLogin(UserVO vo,
								Model model,
								HttpSession session) {
			// 로그인 성공시 회원정보를 받아오고, 로그인 실패시 null을 반환
			UserVO result = userService.userLogin(vo);
			System.out.println(vo.toString()+"로그인");
			
			if(result == null) {
				model.addAttribute("msg", "아이디 비밀번호를 확인하세요");
				return "user/userLogin";	// 다시 로그인 화면
			}else {
				// 세션에 회원정보 저장
				
				session.setAttribute("userVO", result);
				return "redirect:/";
			}
		}	
	
}
