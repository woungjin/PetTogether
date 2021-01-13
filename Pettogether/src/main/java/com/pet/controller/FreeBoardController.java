package com.pet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/freeBoard")
public class FreeBoardController {
	
	
	@RequestMapping("/freeList")
	public String freeList() {
		
		return "freeBoard/freeList";
	}
	
	@RequestMapping("/freeDetail")
	public String freeDetail() {
		
		return "freeBoard/freeDetail";
	}
	
	@RequestMapping("/freeReview")
	public String freeRivew() {
		return "freeBoard/freeReview";
	}
	
}
