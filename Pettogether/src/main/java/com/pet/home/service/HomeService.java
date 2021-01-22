package com.pet.home.service;

import java.util.ArrayList;

import com.pet.command.StarBoardVO;
import com.pet.common.util.Criteria;

public interface HomeService {
	
	public StarBoardVO getBoard(int bno);// 전체게시글
	public StarBoardVO hotelLank();
	public StarBoardVO cafeLank();
	public StarBoardVO hospitalLank();
	public StarBoardVO parkLank();

	public int hotelTotal();
	public int cafeTotal();
	public int hospitalTotal();
	public int parkTotal();
	

	
}
