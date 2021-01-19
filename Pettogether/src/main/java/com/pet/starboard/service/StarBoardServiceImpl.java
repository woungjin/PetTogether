package com.pet.starboard.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pet.starboard.mapper.StarBoardMapper;

@Service("starBoardService")
public class StarBoardServiceImpl implements StarBoardService{
	
	@Autowired
	private StarBoardMapper starBoardMapper;
	
	
	
}
