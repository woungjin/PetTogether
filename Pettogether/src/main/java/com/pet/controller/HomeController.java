package com.pet.controller;


import java.util.ArrayList;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
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
	public String home(HttpServletRequest request, Model model, HttpServletResponse response) {
		
		
		ArrayList<StarBoardVO> list = new ArrayList<StarBoardVO>();
		ArrayList<StarBoardVO> lank = new ArrayList<StarBoardVO>();
		ArrayList<Integer> total = new ArrayList<Integer>();
		ArrayList<StarBoardVO> random = new ArrayList<StarBoardVO>();
		ArrayList<StarBoardVO> randomList = new ArrayList<StarBoardVO>();
		ArrayList<StarBoardVO> allList = new ArrayList<StarBoardVO>();
		ArrayList<StarBoardVO> allList2 = new ArrayList<StarBoardVO>();
		
		Cookie[] ck = request.getCookies();
		
		if (ck != null) {
			for(int i = ck.length-1 ; i>0; i--) {
				if(ck != null && !ck[i].getName().substring(0,1).equals("r") && !ck[i].getName().substring(0,1).equals("c"))  {
					list.add(homeService.getBoard(Integer.parseInt(ck[i].getValue())));
					}
				}
			if(ck.length >= 14  ) {
				Cookie kc = new Cookie(ck[5].getValue(),null);
				kc.setMaxAge(0);
				kc.setPath("/");
				response.addCookie(kc);
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

		// 최신리뷰	
		// 먼저 쿠키를 가져와서 있는지 없는지 확인
		boolean checkrandom = false;
		boolean checkCategory = false;
		if(ck !=null) {
			for(int i = 0 ; i <ck.length; i++ ) {
				if(ck[i].getName().substring(0,1).equals("r")) {
					checkrandom = true;
				} 
				if(ck[i].getName().subSequence(0,1).equals("c")) {
					checkCategory = true;
				}
			}
		}
		// 쿠키가 없다면 생성 
		if(!checkrandom) {
			random.addAll(homeService.getRandom());
			
			

			for(int i=0 ; i < random.size(); i++) {
				String bno2 = Integer.toString(random.get(i).getBno());
				Cookie cookie = new Cookie("r"+random.get(i).getBno(),bno2);
				cookie.setMaxAge(86500 * 7);
				cookie.setPath("/");
				response.addCookie(cookie);

			}
			
		}

		// 쿠키의 value값들을 가져와서 select 돌린후 값을 model에 태워보낸다.
		if(ck != null) {
		for(int i = 0; i< ck.length; i++) {
			if(ck != null && ck[i].getName().substring(0,1).equals("r"))  {
				randomList.add(homeService.getBoard(Integer.parseInt(ck[i].getValue())));
			}
		}
		}
		model.addAttribute("random",randomList);

		
		
		// 호텔, 병원, 카페 , 공원 등 
		if(!checkCategory) {
			allList.addAll(homeService.getAll());
			System.out.println("allList 의 중간 생성 값 : "+ allList.toString());
			for(int i = 0; i<allList.size(); i++) {
				String bno2 = Integer.toString(allList.get(i).getBno());
				Cookie cookie = new Cookie("c" + allList.get(i).getBno(),bno2);
				cookie.setMaxAge(60 * 60 * 24);
				cookie.setPath("/");
				response.addCookie(cookie);
			}
		}
		
		if(ck != null) {
			for(int i = 0; i<ck.length; i++) {
				if(ck != null && ck[i].getName().substring(0,1).equals("c")) {
					allList2.add(homeService.getBoard(Integer.parseInt(ck[i].getValue())));
				}
			}
		}
		model.addAttribute("allList2",allList2);
		System.out.println("allList2 : "+ allList2.toString());

		return "home";
		
		
	}
}
