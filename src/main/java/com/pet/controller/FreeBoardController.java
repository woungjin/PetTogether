package com.pet.controller;

import java.io.File;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.pet.command.MyGoodVO;
import com.pet.command.RecomVO;
import com.pet.command.ReviewRegistVO;
import com.pet.command.ReviewReplyVO;
import com.pet.command.StarVO;
import com.pet.common.util.Criteria;
import com.pet.common.util.PageVO;
import com.pet.freeboard.service.FreeBoardService;

import oracle.jdbc.proxy.annotation.Post;

@Controller
@RequestMapping("/freeBoard")
public class FreeBoardController {
	
	@Autowired
	@Qualifier("freeBoardService")
	private FreeBoardService freeBoardService;
	
	// 리뷰페이지 로드
	@RequestMapping("/freeReview")
	public String freeRivew(Model model ,Criteria cri) {
		
		int total = freeBoardService.reviewGetTotal();
		
		ArrayList<HashMap<String, Object>> list = freeBoardService.getReviewList(cri);
		
		PageVO pageVO = new PageVO(cri, total);
		
		System.out.println(cri.toString());
		System.out.println(pageVO.toString());
		
		for(int i=0 ;  i< list.size(); i++) {
			
			String content = (String) list.get(i).get("CONTENT");
			String content2 = content.substring(1, 8);
			
			list.get(i).put("CONTENT", content2  + "...");
			
			
		}
		
		model.addAttribute("pageVO" , pageVO);
		model.addAttribute("list", list);
		
		return "freeBoard/freeReview";
	}
	
	@RequestMapping("/freeReviewRegist")
	public String freeReviewRegist() {
		return "freeBoard/freeReviewRegist";
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
	// =========================================== 별점 ===========================================
	
	@ResponseBody
	@PostMapping("/starInsert")
	public int starInsert(@RequestBody StarVO vo) {
		
		// userCheck
		int userResult = freeBoardService.userCheck(vo);
		if(userResult == 0) {
			
		
		
		System.out.println(vo.toString());
		int result = freeBoardService.starInsert(vo);
		System.out.println(result);
		// 별점에 따른 스타보드를 업데이트 해줍니다
		ArrayList<StarVO> list = freeBoardService.getStar(vo.getBno());
		int sum = 0;
		int avg = 0;
		for(int i =0 ; i < list.size(); i++) {
			sum +=list.get(i).getPoint();
		}
		
		avg =(int) sum / list.size();
		System.out.println("sum : " + sum  + "avg : "  + avg);
		
		freeBoardService.UpdateStarBoard(vo.getBno(), list.size(), avg);
		return result; 
		}else {
			return 0;
		}
		
		
		
	}
	
	
	
	// =========================================================== 리뷰겟리스트 =========================================
	/*
	 * @ResponseBody
	 * 
	 * @GetMapping("/getReviewList") public ArrayList<ReviewRegistVO>
	 * getReviewList(Model model){ ArrayList<ReviewRegistVO> list =
	 * freeBoardService.getReviewList(); int total =
	 * freeBoardService.reviewGetTotal(); System.out.println(total); Criteria cri =
	 * new Criteria(); pageVO pageVO = new pageVO(cri, total);
	 * model.addAttribute("pageVO" , pageVO);
	 * 
	 * 
	 * return list ;
	 * 
	 * }
	 */
	
	
	
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
			ReviewRegistVO vo = new ReviewRegistVO(3,3, writer, content, uploadPath, fileLoca, fileName, fileRealName, null);
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

	
	// reReviewGetIMG
	@RequestMapping("display/{fileLoca}/{fileName:.+}") // fileName 뒤에 특수문자를 받는 문법
	@ResponseBody
	public ResponseEntity<byte[]> displa(@PathVariable("fileLoca") String fileLoca,
										@PathVariable("fileName") String fileName){
		
		String uploadPath = "C:\\course\\project\\PetTogether\\Pettogether\\src\\main\\webapp\\resources\\img\\fileupload\\" + fileLoca;
		
		File file = new File(uploadPath + "\\" + fileName);
		
		ResponseEntity<byte[]> result = null;
		
		try {
			HttpHeaders header = new HttpHeaders();
			header.add("Content-type", Files.probeContentType(file.toPath()) );
			
			byte[] arr = FileCopyUtils.copyToByteArray(file);
			
			result = new ResponseEntity<byte[]>(arr, header , HttpStatus.OK);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		return result;
	}
	
	
	// ===========================================모달창에 자세히 딕테일 리뷰글 자세히 얻어오기 --==========
	
	@ResponseBody
	@PostMapping("/getReviewDetail")
	public ReviewRegistVO getReviewDetail(@RequestBody ReviewRegistVO vo , Model model) {
		System.out.println(vo.toString());
		ReviewRegistVO reviewVO = freeBoardService.getReviewDetail(vo);
		
		model.addAttribute("reviewReplyVO" , reviewVO);
		return reviewVO;
	}
	
	// ===========================================리뷰 댓글 isnert=================================================
	
	@ResponseBody
	@PostMapping("/reviewReplyRegist")
	public int reviewReplyRegist(@RequestBody ReviewReplyVO vo) {
	
		
		return freeBoardService.reviewRplyInsert(vo);
	}
	
	// ==============================================리뷰댓글 가져오기 ==========================================
	@ResponseBody
	@GetMapping("/getReviewReply/{bno}/{reviewPageNum}")
	public ArrayList<ReviewReplyVO> getReviewReply(@PathVariable("bno") int review_bno,
													@PathVariable("reviewPageNum") int reviewPageNum) {
		
		System.out.println(reviewPageNum);
		Criteria cri = new Criteria(reviewPageNum , 10);
		ArrayList<ReviewReplyVO> list =  freeBoardService.getReviewReply(review_bno ,cri);
		
		return list;
	}
	
	// ================================= 리뷰 댓글 수정하기 ===========================================
	@ResponseBody
	@PostMapping("/reviewReplyUpdate")
	public int reviewReplyUpdate(@RequestBody ReviewReplyVO vo) {
		
		int pwCheckResult = freeBoardService.pwCheck(vo);
		System.out.println(pwCheckResult);
		
		if(pwCheckResult == 1) {
			int updateResult = freeBoardService.reviewReplyUpdate(vo);
			if(updateResult == 1) {
				return 1;
			}else {
				return 0;
			}
		}else {
			return 2;
		}
	}
	
	//================================== 리뷰 댓글 삭제하기 ============================================
	@ResponseBody
	@PostMapping("/reviewReplyDelete")
	public int reviewReplyDelete(@RequestBody ReviewReplyVO vo) {
		
		System.out.println(vo.toString());
		int pwCheckResult = freeBoardService.pwCheck(vo);
		
		if(pwCheckResult == 1) {
			int deleteResult =  freeBoardService.reviewReplyDelete(vo);
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
