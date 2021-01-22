package com.pet.controller;


import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pet.command.StarBoardVO;
import com.pet.map.service.MapService;

@Controller
@RequestMapping("/mapBoard")
public class MapBoardController {
	
	@Autowired
	@Qualifier("mapService")
	private MapService mapService;
	
	@RequestMapping("/map")
	public String mapBoard() {
		return "mapBoard/map";
	}
	
	@ResponseBody
	@RequestMapping(value = "/categoryCheck", method = RequestMethod.POST)
	public ArrayList<StarBoardVO> categoryCheck(@RequestBody StarBoardVO vo) {
		System.out.println(vo);
		ArrayList<StarBoardVO> category = mapService.categoryCheck(vo);
		System.out.println(category);
		
		
		
		return category;
		
	}
}
