package com.pet.map.mapper;

import java.util.ArrayList;

import com.pet.command.StarBoardVO;

public interface MapMapper {
	
	public ArrayList<StarBoardVO> categoryCheck(StarBoardVO vo);
}
