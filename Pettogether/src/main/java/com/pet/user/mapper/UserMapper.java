package com.pet.user.mapper;

import java.util.ArrayList;

import com.pet.command.HeartVO;
import com.pet.command.MyReviewVO;
import com.pet.command.ReviewRegistVO;
import com.pet.command.ReviewReplyVO;
import com.pet.command.UserVO;

public interface UserMapper {

	public int idCheck(UserVO vo);
	public int join(UserVO vo);

//	public UserVO userLogin(UserVO vo);
	public UserVO login(UserVO vo);
//	public UserVO getInfo(String userId);
	public int update(UserVO vo);
	public int delete(UserVO vo);
	public UserVO findId(UserVO vo);
	public UserVO findPw(UserVO vo);
	public int updatePw(UserVO vo);
	public ArrayList<HeartVO> heart(String userId);
	public ArrayList<ReviewRegistVO> myReview(String userId);	
}
