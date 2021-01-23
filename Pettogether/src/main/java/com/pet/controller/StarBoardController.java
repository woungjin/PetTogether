package com.pet.controller;

import java.util.ArrayList;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pet.command.StarBoardReplyVO;
import com.pet.command.StarBoardVO;
import com.pet.common.util.Criteria;
import com.pet.common.util.PageVO;
import com.pet.freeboard.service.FreeBoardService;
import com.pet.starboard.service.StarBoardService;

@Controller
@RequestMapping("/starBoard")
public class StarBoardController {
	
	@Autowired
	@Qualifier("starBoardService")
	private StarBoardService starBoardService;
	
	
	@RequestMapping("/freeList")
	public String freeList(Model model , Criteria cri ) {
		 
		ArrayList<StarBoardVO> list = starBoardService.getList(cri);
		int total =starBoardService.getTotal();
		PageVO pageVO = new PageVO(cri, total);
		
		model.addAttribute("list",list );
		model.addAttribute("pageVO", pageVO);
		return "freeBoard/freeList";
	}
	
	@RequestMapping("/cateList")
	public String cateFreeList(Model model , Criteria cri ,String cate) {

		System.out.println("cate : "  + cate);
		ArrayList<StarBoardVO> list = starBoardService.getcate(cate, cri);
		System.out.println(list.toString());
		int cateTotal = starBoardService.cateToal(cate);
		
		PageVO pageVO = new PageVO(cri, cateTotal);
		model.addAttribute("list",list );
		model.addAttribute("pageVO", pageVO);
		model.addAttribute("cate" , cate);
		
		return "freeBoard/cateList";
	}
	
	
	
	
	@RequestMapping("/freeDetail")
	public String freeDetail(@RequestParam("bno") int bno, Model model, HttpServletResponse response, HttpServletRequest request) {
		
		// 오늘본 게시글
		ArrayList<Cookie> cookieList = new ArrayList<>();
		
		String bno2 = Integer.toString(bno);
		Cookie[] ck = request.getCookies();		

		String value = null;
		boolean checkCookie = false;

		for(int i = 0 ; i<ck.length; i++) {
			if(ck[i].getValue().equals(bno2)) {
				checkCookie = true;
				value = ck[i].getValue();
				System.out.println("value 값 : "+ value);
				Cookie kc = new Cookie(ck[i].getValue(),null);
				kc.setMaxAge(0);
				kc.setPath("/");
				response.addCookie(kc);
			
				Cookie cookie1 = new Cookie(value,value);
				cookie1.setMaxAge(60*60*24); // 하루
				cookie1.setPath("/");
				response.addCookie(cookie1);
				
				
			}
		}

//		5개 이상이라면 삭제
		if(ck.length >= 8 && !checkCookie ) {
			Cookie kc = new Cookie(ck[5].getValue(),null);
			kc.setMaxAge(0);
			kc.setPath("/");
			response.addCookie(kc);
		}
		
		if(!checkCookie ) {			
			Cookie cookie2 = new Cookie(bno2,bno2 );
			cookie2.setMaxAge(60*60*24); // 하루
			cookie2.setPath("/");
			response.addCookie(cookie2);
		}

		
		
		int result = starBoardService.hit(bno);
		if(result == 1) {
			System.out.println("hit 없데이트 성공");
		}else {
			System.out.println("hit 업데이트 실패");
		}
		StarBoardVO vo = starBoardService.getBoardDetail(bno);
		
		model.addAttribute("vo" , vo);
		
		
		return "freeBoard/freeDetail";
	}

	
	// 게시판에 댓글 달기 ===============================================================
	@ResponseBody
	@PostMapping("starBoardReplyInsert")
	public int starBoardReplyInsert(@RequestBody StarBoardReplyVO vo) {
		int result = starBoardService.starReplyInsert(vo);
		return result; 
	}
	
	
	// 게시판 댓글 불러오기 ======================================
	@ResponseBody
	@GetMapping("getStarReply/{bno}/{pageNum}")
	public ArrayList<StarBoardReplyVO> getStarReply(@PathVariable("bno") int bno,
													@PathVariable("pageNum") int pageNum) {
		
		Criteria cri = new Criteria(pageNum , 8);
		ArrayList<StarBoardReplyVO> list = starBoardService.getStarReply(bno , cri);
		System.out.println(list.toString());
		System.out.println(pageNum);
		
		
		
		return list;
	}
	
	
	@ResponseBody
	@PostMapping("/starReplyUpdate")
	public int starReplyUpdate(@RequestBody StarBoardReplyVO vo) {
		
		System.out.println(vo.toString());
		int pwResult = starBoardService.pwCheck(vo);
		System.out.println(pwResult);
		if(pwResult == 1) {
			int updateResult = starBoardService.starReplyUpdate(vo);
			if(updateResult == 1) {
				return 1;
			}else {
				return 0;
			}
		}else {
			return 2;
		}
		
	}
	
	
	@ResponseBody
	@PostMapping("/starReplyDelete")
	public int starReplyDelete(@RequestBody StarBoardReplyVO vo) {
		
		System.out.println(vo.toString());
		
		int pwResult = starBoardService.pwCheck(vo);
		if(pwResult == 1) {
			int deleteResult = starBoardService.starReplyDelete(vo);
			if(deleteResult == 1) {
				return 1;
			}else { 
				return 0;
			}
		}else {
			
			return 2;
		}
		
	}
		
	
	
	
	
	
	

}
