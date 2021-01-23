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

		
		Cookie[] ck = request.getCookies();
		
		
		for(int i = ck.length-1 ; i>0; i--) {
			if(ck != null && !ck[i].getName().substring(0,1).equals("r"))  {
				list.add(homeService.getBoard(Integer.parseInt(ck[i].getValue())));
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
		boolean checkrandom = false;
		for(int i = 0 ; i <ck.length; i++ ) {
			if(ck[i].getName().substring(0,1).equals("r")) {
				checkrandom = true;
			} 
		}
		if(!checkrandom) {
			random.addAll(homeService.getRandom());
			
			System.out.println("random : " + random.toString());

			for(int i=0 ; i < random.size(); i++) {
				String bno2 = Integer.toString(random.get(i).getBno());
				Cookie kc = new Cookie("r"+random.get(i).getBno(),bno2);
				kc.setMaxAge(86500 * 7);
				kc.setPath("/");
				response.addCookie(kc);

			}
			
		}
		for(int i = 0; i< ck.length; i++) {
			if(ck != null && ck[i].getName().substring(0,1).equals("r"))  {
				randomList.add(homeService.getBoard(Integer.parseInt(ck[i].getValue())));
			}
		}
		
		model.addAttribute("ran",randomList);
		System.out.println("randomList의 값 : "+ randomList.toString());

		

		return "home";
	}
}
