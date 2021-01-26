package com.pet.home.mapper;


import java.util.ArrayList; 

import com.pet.command.StarBoardVO;


public interface HomeMapper {

	public StarBoardVO getBoard(int bno);// 전체게시글
	public StarBoardVO hotelLank(); 
	public StarBoardVO cafeLank();
	public StarBoardVO hospitalLank();
	public StarBoardVO parkLank();

	public int hotelTotal();
	public int cafeTotal();
	public int hospitalTotal();
	public int parkTotal();
	
	public ArrayList<StarBoardVO> getRandom();
	
	public ArrayList<StarBoardVO> getAll();
}
