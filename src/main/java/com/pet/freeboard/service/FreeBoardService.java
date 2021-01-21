package com.pet.freeboard.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.pet.command.MyGoodVO;
import com.pet.command.RecomVO;
import com.pet.command.ReviewRegistVO;
import com.pet.command.ReviewReplyVO;
import com.pet.command.StarVO;
import com.pet.common.util.Criteria;

public interface FreeBoardService {
	
	public int myGoodInsert(MyGoodVO vo);
	public int myGoodDelete(MyGoodVO vo);
	public boolean fileInsert(ReviewRegistVO vo);
	public int starInsert(StarVO vo); // 별점등록메서드
	
	
	
	
	public ArrayList<HashMap<String, Object>> getReviewList(Criteria cri); // 리뷰리스트 불러오기
	
	
	
	
	
	public int reviewGetTotal();
	public ReviewRegistVO getReviewDetail(ReviewRegistVO vo);// 리뷰 딕테일 얻어오기
	public int reviewRplyInsert(ReviewReplyVO vo);
	public  ArrayList<ReviewReplyVO> getReviewReply(int review_bno , Criteria cri);
	public int pwCheck(ReviewReplyVO vo); // 리뷰 댓글 삭제 전 비밀번호 확인
	public int reviewReplyUpdate(ReviewReplyVO vo);// 리뷰댓글 업데이트
	public int reviewReplyDelete(ReviewReplyVO vo); // 리뷰댓글삭제
	public ArrayList<StarVO> getStar(int bno);
	public int UpdateStarBoard(int bno , int sum , int avg);
	public int userCheck(StarVO vo);
	
}
