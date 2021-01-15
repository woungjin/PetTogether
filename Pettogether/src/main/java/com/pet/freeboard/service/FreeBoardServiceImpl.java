package com.pet.freeboard.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pet.command.MyGoodVO;
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

	
	
	
}
