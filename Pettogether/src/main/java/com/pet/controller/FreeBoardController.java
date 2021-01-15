package com.pet.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.pet.command.MyGoodVO;	
import com.pet.command.ReviewRegistVO;
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
	
	// 찜등록
	@ResponseBody
	@GetMapping("/goodInsert/{bno}/{user_id}")
	public boolean goodInsert(@PathVariable("bno") int bno,
			@PathVariable("user_id") String user_Id) {
		boolean flag = true; 
		MyGoodVO vo = new MyGoodVO(bno, user_Id);
		int result = freeBoardService.myGoodInsert(vo);
		if(result == 1 ) {
			return flag ;
		}else {
			flag = false;
			return flag;
		}
	}
	
	// 찜삭제 
	@ResponseBody
	@GetMapping("/goodDelete/{bno}/{user_id}")
	public int goodDelete(@PathVariable("bno") int bno ,
							@PathVariable("user_id") String user_id) {
		MyGoodVO vo = new MyGoodVO(bno, user_id);
		int result = freeBoardService.myGoodDelete(vo);
		return result;
	}
	
	
	
	
	
	
	
	
	
	
	
	// ==================================================================== 리뷰 =====================================
	
	@RequestMapping("/reviewUpload")
	@ResponseBody
	public String reviewUpload(@RequestParam("file") MultipartFile file,
								@RequestParam("content") String content,
								HttpSession session) {
		System.out.println("들어왔습니다");
		
		try {
			/*
			 작성자정보 가져오기 
			 UserVO vo = (UserVO) session.getAttribute("userVO");
			 String wrtier = userVO.getUserId();
			  */
			String writer = "test";
			// 1. 날짜별로 폴더관리 
			Date date = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
			String fileLoca = sdf.format(date);
			System.out.println(fileLoca);
			
			// 2. 저장할폴더
			String uploadPath = "C:\\course\\project\\PetTogether\\Pettogether\\src\\main\\webapp\\resources\\img\\fileupload\\" + fileLoca;
			System.out.println(1);
			File folder = new File(uploadPath);
			if(!folder.exists()) {
				folder.mkdir();
			}
			
			String fileRealName = file.getOriginalFilename();
			long size = file.getSize();
			String fileExtension = fileRealName.substring(fileRealName.lastIndexOf(".") , fileRealName.length());
			System.out.println(2);
			UUID uuid = UUID.randomUUID();
			String uuids = uuid.toString().replaceAll("-", "");
			String fileName = uuids + fileExtension;
			System.out.println(3);
			
			System.out.println("=================");
			System.out.println("저장할 path : " + uploadPath);
			System.out.println("파일실젱름 : " + fileRealName);
			System.out.println("파일 사이즈 " + size);
			System.out.println("확장자 : " + fileExtension);
			System.out.println("변경해서 저장할 파일명" + fileName);
			System.out.println(4);
			// 4. 파일 업로드처리 
			File saveFile = new File(uploadPath + "\\" + fileName);
			file.transferTo(saveFile);
			System.out.println(5);
			// 5. DB에 insert작업
			ReviewRegistVO vo = new ReviewRegistVO(0, writer, content, uploadPath, fileLoca, fileName, fileRealName, null);
			boolean result = freeBoardService.fileInsert(vo);
			System.out.println(6);
			if(result) {
				return "success";
				
			}else {
				return "fail";
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return null;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
