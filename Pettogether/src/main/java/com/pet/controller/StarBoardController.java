package com.pet.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pet.starboard.service.StarBoardService;

@Controller
@RequestMapping("/starBoard")
public class StarBoardController {
	
	@Autowired
	@Qualifier("starBoardService")
	private StarBoardService starBoardService;
	
	
	@RequestMapping("/freeList")
	public String freeList() {
		return "freeBoard/freeList";
	}
	
	@RequestMapping("/freeDetail")
	public String freeDetail() {
		return "freeBoard/freeDetail";
	}
	
	
	
	
	
	
	

}
