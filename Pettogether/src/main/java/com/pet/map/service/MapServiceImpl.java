package com.pet.map.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pet.command.StarBoardVO;
import com.pet.map.mapper.MapMapper;

@Service("mapService")
public class MapServiceImpl implements MapService {

	@Autowired
	public MapMapper mapmapper;
	
	@Override
	public ArrayList<StarBoardVO> categoryCheck(StarBoardVO vo) {
		System.out.println(vo);
		return mapmapper.categoryCheck(vo);
	}

}
