package com.pet.controller;


import java.util.ArrayList;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.beans.factory.annotation.Autowired;


import com.pet.command.StarBoardVO;
import com.pet.home.service.HomeService;

import sun.java2d.opengl.WGLSurfaceData.WGLVSyncOffScreenSurfaceData;

import org.springframework.beans.factory.annotation.Qualifier;


@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	

	@Autowired
	@Qualifier("homeService")
	private HomeService homeService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpServletRequest request, Model model) {
		
		
		ArrayList<StarBoardVO> list = new ArrayList<StarBoardVO>();
		ArrayList<StarBoardVO> lank = new ArrayList<StarBoardVO>();
		ArrayList<Integer> total = new ArrayList<Integer>();
		
		Cookie[] ck = request.getCookies();
		
		if(ck != null) {
			for(int i=1; i<ck.length; i++) {
				
				System.out.println(i+"번쨰: "+ck[i].getValue());
				
			}
		}
		
		for(int i = ck.length-1 ; i>0; i--) {
			if(ck != null )  {
				list.add(homeService.getBoard(Integer.parseInt(ck[i].getValue())));
			}
		}
		for(int i = 0 ; i<list.size();i++) {
			if(list !=null ) {
				System.out.println(list.get(i));


			}
		}
		model.addAttribute("cookieBoard",list );
		
		
		// 배너 랭킹
		lank.add(homeService.hotelLank());
		lank.add(homeService.cafeLank());
		lank.add(homeService.hospitalLank());	
		lank.add(homeService.parkLank());
		model.addAttribute("lank",lank);
		System.out.println("lank 리스트 : "  +lank.toString());
		
		
		
		// 카테고리
		int a = homeService.hotelTotal();
		int b = homeService.cafeTotal();
		int c = homeService.hospitalTotal();
		int d = homeService.parkTotal();
		
		total.add(a);
		total.add(b);
		total.add(c);
		total.add(d);
		
		System.out.println("total : " + total.toString());
		model.addAttribute("total",total);



		return "home";
	}
}
