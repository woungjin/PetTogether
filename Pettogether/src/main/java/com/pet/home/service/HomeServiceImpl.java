package com.pet.home.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pet.command.StarBoardVO;
import com.pet.home.mapper.HomeMapper;

@Service("homeService")
public class HomeServiceImpl implements HomeService {

	@Autowired
	private HomeMapper homeMapper;
	
	@Override
	public StarBoardVO getBoard(int bno) {
		
		return homeMapper.getBoard(bno);
	}

	@Override
	public StarBoardVO hotelLank() {
		
		return homeMapper.hotelLank();
	}

	@Override
	public StarBoardVO cafeLank() {
	
		return homeMapper.cafeLank();
	}

	@Override
	public StarBoardVO hospitalLank() {
	
		return homeMapper.hospitalLank();
	}

	@Override
	public StarBoardVO parkLank() {
		
		return homeMapper.parkLank();
	}

	@Override
	public int hotelTotal() {

		return homeMapper.hotelTotal();
	}

	@Override
	public int cafeTotal() {
		// TODO Auto-generated method stub
		return homeMapper.cafeTotal();
	}

	@Override
	public int hospitalTotal() {

		return homeMapper.hospitalTotal();
	}

	@Override
	public int parkTotal() {

		return homeMapper.parkTotal();
	}

	@Override
	public ArrayList<StarBoardVO> getRandom() {
	
		return homeMapper.getRandom();
	}





}
