package com.pet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mapBoard")
public class MapBoardController {
	
	@RequestMapping("/map")
	public String mapBoard() {
		return "mapBoard/map";
	}
	
}
