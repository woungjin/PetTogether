package com.pet.freeboard.mapper;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Param;

import com.pet.command.MyGoodVO;
import com.pet.command.RecomVO;
import com.pet.command.ReviewRegistVO;
import com.pet.command.ReviewReplyVO;
import com.pet.command.StarVO;
import com.pet.common.util.Criteria;

public interface FreeBoardMapper {
	public int myGoodInsert(MyGoodVO vo);
	public int myGoodDelete(MyGoodVO vo);
	public boolean fileInsert(ReviewRegistVO vo);
	public int starInsert(StarVO vo); // 별점등록메서드
	public ArrayList<StarVO> getStar(int bno);
	public int UpdateStarBoard(@Param("bno") int bno ,@Param("sum")  int sum ,@Param("avg") int avg);
	public int userCheck(StarVO vo);
	public String getUserPw(ReviewReplyVO vo);
	public int recomInsert(RecomVO vo);
	
	
	
	
	public ArrayList<HashMap<String, Object>> getReviewList(Criteria cri); // 리뷰 리스트 불러오기
	
	
	
	
	public int reviewGetTotal();
	
	
	
	
	
	public ReviewRegistVO getReviewDetail(ReviewRegistVO vo);//딕테일한 리뷰얻어오기
	public int reviewRplyInsert(ReviewReplyVO vo);
	
	
	
	
	
	public  ArrayList<ReviewReplyVO> getReviewReply(@Param("review_bno") int review_bno , @Param("cri") Criteria cri);
	public int reviewReplyUpdate(ReviewReplyVO vo);
	public int reviewReplyDelete(ReviewReplyVO vo);
	public int pwCheck(ReviewReplyVO vo);
	public int replyTotal(int review_bno);
	
}
