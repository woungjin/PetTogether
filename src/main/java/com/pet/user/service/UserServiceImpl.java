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
	public UserVO userLogin(UserVO vo) {
		
		System.out.println(vo.toString()+"로그인서비스");
		return userMapper.userLogin(vo);
	}

}
