package com.pet.freeboard.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pet.command.MyGoodVO;
import com.pet.command.RecomVO;
import com.pet.command.ReviewRegistVO;
import com.pet.command.ReviewReplyVO;
import com.pet.command.StarVO;
import com.pet.common.util.Criteria;
import com.pet.freeboard.mapper.FreeBoardMapper;

@Service("freeBoardService")
public class FreeBoardServiceImpl implements FreeBoardService{
	
	@Autowired
	private FreeBoardMapper freeBoardMapper;

	public int myGoodInsert(MyGoodVO vo) {

		return freeBoardMapper.myGoodInsert(vo);
	}

	
	public int myGoodDelete(MyGoodVO vo) {
		
		System.out.println("service에 들어온 vo :" + vo.toString());
		int result = freeBoardMapper.myGoodDelete(vo);
		System.out.println("맵퍼다녀옴");
		
		
		return result; 
	}


	

	 public boolean fileInsert(ReviewRegistVO vo) {
	  
	 return freeBoardMapper.fileInsert(vo);
	 }



	public int starInsert(StarVO vo) {

		return freeBoardMapper.starInsert(vo);
	}
	// 별점에 따른 스타보드업데이
	public ArrayList<StarVO> getStar(int bno) {
		
		return freeBoardMapper.getStar(bno);
	}
	
	


	
	
	

	
	
	public ArrayList<HashMap<String, Object>> getReviewList(Criteria cri) {
		
		ArrayList<HashMap<String, Object>> result =  freeBoardMapper.getReviewList(cri);
		System.out.println(result.toString());
		return result;
	}

	
	
	
	
	
	
	
	

	@Override
	public int reviewGetTotal() {
		
		return freeBoardMapper.reviewGetTotal();
	}


	public ReviewRegistVO getReviewDetail(ReviewRegistVO vo) {
		
		return freeBoardMapper.getReviewDetail(vo);
	}


	@Override
	public int reviewRplyInsert(ReviewReplyVO vo) {
		
		return freeBoardMapper.reviewRplyInsert(vo);
	}


	
	public ArrayList<ReviewReplyVO> getReviewReply(int review_bno , Criteria cri) {
				return  freeBoardMapper.getReviewReply(review_bno , cri); 
	}


	@Override
	public int pwCheck(ReviewReplyVO vo) {
		
		return freeBoardMapper.pwCheck(vo);
	}


	@Override
	public int reviewReplyUpdate(ReviewReplyVO vo) {
		
		return freeBoardMapper.reviewReplyUpdate(vo);
	}


	
	public int reviewReplyDelete(ReviewReplyVO vo) {
		
		
		return freeBoardMapper.reviewReplyDelete(vo);
	}


	@Override
	public int UpdateStarBoard(int bno, int sum, int avg) {
		return freeBoardMapper.UpdateStarBoard(bno, sum, avg);
	}


	@Override
	public int userCheck(StarVO vo) {
		return freeBoardMapper.userCheck(vo);
	}


	
	
	
}
