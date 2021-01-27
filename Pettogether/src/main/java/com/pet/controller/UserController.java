package com.pet.controller;

import java.util.ArrayList;

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

import com.pet.command.HeartVO;
import com.pet.command.ReviewRegistVO;

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
	public String userMyModify(HttpSession session,
							   Model model) {
		
		UserVO vo = (UserVO) session.getAttribute("userVO");		
		
		if(vo.getQuiz() == null) {
			model.addAttribute("msg", "카카오계정은 수정할수 없습니다.");
			return "user/userMypage";
		}else {
			return "user/userMypageModify";
		}		
		
	}
	// 마이페이지 안에서 찜 목록 부분
	@RequestMapping("userMypageHeart")
	public String userMypageHeart(HttpSession session, Model model) {
			
			UserVO result = (UserVO) session.getAttribute("userVO");
			
			String userId = result.getId();
			
			ArrayList<HeartVO> userHeart = userService.heart(userId);			
			
			model.addAttribute("heart", userHeart);
			
		return "user/userMypageHeart";
	}

	// 마이페이지 안에서 리뷰 글 부분
	@RequestMapping("userMypageReview")
	public String userMypageReview(HttpSession session, Model model) {
		
		UserVO result = (UserVO)session.getAttribute("userVO");
		
		String userId = result.getId();
		
		ArrayList<ReviewRegistVO> userReview = userService.myReview(userId);
		
		
		model.addAttribute("review", userReview);
		
		
		return "user/userMypageReview";
	}
	
	@RequestMapping("userKakaoPw")
	public String userKakaoPw() {
		return "user/userKakaoPw";
	}
	
	// 마이페이지 안에서 회원 탈퇴 부분
	@RequestMapping("userMypageDelete")
	public String userMypageDelete(HttpSession session,
								   Model model) {
		
		UserVO vo = (UserVO) session.getAttribute("userVO");
		
		if(vo.getQuiz() == null) {
			model.addAttribute("msg", "카카오계정은 탈퇴기능이 없습니다.");
			return "user/userMypage";			
		}else {
			return "user/userMypageDelete";
		}		
		
		
	}

	// 아이디 찾기 페이지
	@RequestMapping("userFindId")
	public String userFindId() {
		return "user/userFindId";
	}
	
	// 비밀번호 찾기 페이지
	@RequestMapping("userFindPw")
	public String userFindPw() {
		return "user/userFindPw";
	}
	
	// 비밀번호 찾은 후 새 비밀번호 입력 페이지
	@RequestMapping("userUpdatePw")
	public String userUpdatePw() {
		return "user/userUpdatePw";
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
			UserVO result = userService.login(vo);
			
			
			if(result == null) {
				model.addAttribute("login", "아이디 비밀번호를 확인하세요");
				return "user/userLogin";	// 다시 로그인 화면
			}else {
				// 세션에 회원정보 저장
				
				session.setAttribute("userVO", result);				
				
				
				return "redirect:/";
			}
		}
	
	@RequestMapping(value="/kakaoLogin", method=RequestMethod.POST)
	public String kakaoLogin(UserVO vo,
							 Model model,
							 HttpSession session) {			
		
		if(vo == null) {
			model.addAttribute("login", "다시 시도해주세요.");
			return "user/userLogin";
		}else {
			session.setAttribute("userVO", vo);
			
			return "redirect:/";
		}
		
		
	}

	
	// 로그아웃
		@RequestMapping("/userLogout")
		public String userLogout(HttpSession session) {
			session.invalidate();   // 세션정보 삭제
			return "redirect:/";  // home화면으로 이동
		}
	
	// 회원정보 수정
	
		@RequestMapping(value="/userMypageUpdate", method = RequestMethod.POST)
		public String userUpdate(UserVO vo,RedirectAttributes RA, HttpSession session) {
			
			int result = userService.update(vo);
			
			if(result == 1) {
				RA.addFlashAttribute("msg", "정보 수정이 완료되었습니다");
				session.setAttribute("userVO", vo);
				return "redirect:/user/userMypage";
			}else {
				RA.addFlashAttribute("msg", "수정에 실패했습니다.다시 시도해주세요.");
				return "redirect:/user/userMypageModify";
			}
			
			
			
		}
		
		
		
	// 회원탈퇴
	@RequestMapping(value="/Delete", method = RequestMethod.POST)
	public String userDelete(UserVO vo,
							RedirectAttributes RA,HttpSession session) {
		
		int result = userService.delete(vo);
		
		if(result == 1) {			
			session.invalidate();
			return "redirect:/";
		}else {
			RA.addFlashAttribute("msg", "비밀번호가 다릅니다. 비밀번호를 확인하세요.");
			return "redirect:/user/userMypageDelete";
		}
		

	}

	// 아이디 찾기
	@RequestMapping(value="/findId", method = RequestMethod.POST)
	public String userFindId(UserVO vo,RedirectAttributes RA,HttpSession session) {
		
		
		UserVO result = userService.findId(vo);
		
		if(result == null) {
			RA.addFlashAttribute("msg", "본인확인 실패.다시 확인하세요.");
			return "redirect:/user/userFindId";
		}else {
			String userId = result.getId();
			RA.addFlashAttribute("userId", userId);
			return "redirect:/user/userLogin";
		}
		
	}
	
	// 비밀번호 찾기
	@RequestMapping(value="/findPw", method = RequestMethod.POST)
	public String userFindPw(UserVO vo,RedirectAttributes RA,HttpSession session) {
		
		UserVO result = userService.findPw(vo);
		
		if(result == null) {
			RA.addFlashAttribute("msg", "인증실패.다시 시도해주세요");
			return "redirect:/user/userFindPw";
		}else {
			String userId = result.getId();
			RA.addFlashAttribute("userId", userId);
			return "redirect:/user/userUpdatePw";
		}
	}
	
	// 새 비밀번호로 업데이트
	@RequestMapping(value="/updatePw",method = RequestMethod.POST)
	public String userUpdatePw(UserVO vo,RedirectAttributes RA,Model model) {
		
		String userId = vo.getId();
		int result = userService.updatePw(vo);
		
		if(result == 1) {
			RA.addFlashAttribute("msg", "비밀번호가 변경되었습니다.");
			model.addAttribute("userId", userId);
			return "redirect:/user/userLogin";
		}else {
			RA.addFlashAttribute("msg", "변경실패.다시 시도해주세요");
			return "redirect:/user/userFindPw";
		}
		
	}

	
	
	
}
