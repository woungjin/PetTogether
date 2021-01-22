package com.pet.user.service;

import com.pet.command.UserVO;

public interface UserService {

	public int idCheck(UserVO vo);
	public int join(UserVO vo);
//	public UserVO userLogin(UserVO vo);
	public UserVO login(UserVO vo);
//	public UserVO getInfo(String userId);
	public int update(UserVO vo);
	public int delete(UserVO vo);
}
