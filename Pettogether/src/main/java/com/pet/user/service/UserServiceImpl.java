package com.pet.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.pet.command.UserVO;
import com.pet.user.mapper.UserMapper;

@Service("userService")
public class UserServiceImpl implements UserService{

	@Autowired
	private UserMapper userMapper;
	
	@Override
	public int idCheck(UserVO vo) {
		
		return userMapper.idCheck(vo);
	}

	@Override
	public int join(UserVO vo) {
		
		return userMapper.join(vo);
	}

	@Override
	public UserVO login(UserVO vo) {
		return userMapper.login(vo);
		
		
	}

//	@Override
//	public UserVO getInfo(String userId) {
//		return userMapper.getInfo(userId);
//	}

	@Override
	public int update(UserVO vo) {
		return userMapper.update(vo);
	}


	@Override
	public int delete(UserVO vo) {
		
		return userMapper.delete(vo);
	}

	@Override
	public UserVO findId(UserVO vo) {
		
		return userMapper.findId(vo);
	}

	@Override
	public UserVO findPw(UserVO vo) {
		
		return userMapper.findPw(vo);
	}

	@Override
	public int updatePw(UserVO vo) {
		
		return userMapper.updatePw(vo);
	}

}
