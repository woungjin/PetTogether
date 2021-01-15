package com.pet.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pet.command.MyGoodVO;
import com.pet.freeboard.service.FreeBoardService;

@Controller
@RequestMapping("/freeBoard")
public class FreeBoardController {
	
	@Autowired
	@Qualifier("freeBoardService")
	private FreeBoardService freeBoardService;
	
	
	@RequestMapping("/freeDetail")
	public String freeDetail() {
		
		return "freeBoard/freeDetail";
	}
	
	@RequestMapping("/freeReview")
	public String freeRivew() {
		return "freeBoard/freeReview";
	}
	
	@RequestMapping("/freeReviewRegist")
	public String freeReviewRegist() {
		return "freeBoard/freeReviewRegist";
	}
	
	@RequestMapping("/freeList")
	public String freeList() {
		
		
		
		
		return "freeBoard/freeList";
	}
	
	@ResponseBody
	@GetMapping("/goodInsert/{bno}/{user_id}")
	public boolean goodInsert(@PathVariable("bno") int bno,
			@PathVariable("user_id") String user_Id) {
		boolean flag = true; 
		MyGoodVO vo = new MyGoodVO(bno, user_Id);
		int result = freeBoardService.myGoodInsert(vo);
		System.out.println("insert에대한 결과" + result);
		System.out.println("inser VO " + vo.toString());
		if(result == 1 ) {
			return flag ;
		}else {
			flag = false;
			return flag;
		}
	}
	
	@ResponseBody
	@GetMapping("/goodDelete/{bno}/{user_id}")
	public int goodDelete(@PathVariable("bno") int bno ,
							@PathVariable("user_id") String user_id) {
		
		MyGoodVO vo = new MyGoodVO(bno, user_id);
		System.out.println("컨트롤러의 delete의 vo" + vo.toString());
		
		int result = freeBoardService.myGoodDelete(vo);
		System.out.println("서비스 다녀옴");
		
		return result;
	}
	
	
	
	
	
	
}
