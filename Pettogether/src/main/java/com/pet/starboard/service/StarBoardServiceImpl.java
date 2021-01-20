package com.pet.starboard.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pet.command.StarBoardReplyVO;
import com.pet.command.StarBoardVO;
import com.pet.common.util.Criteria;
import com.pet.starboard.mapper.StarBoardMapper;

@Service("starBoardService")
public class StarBoardServiceImpl implements StarBoardService{
	
	@Autowired
	private StarBoardMapper starBoardMapper;

	public int starReplyInsert(StarBoardReplyVO vo) {
		return starBoardMapper.starReplyInsert(vo);
	}

	
	public ArrayList<StarBoardReplyVO> getStarReply(int bno , Criteria cri) {
		return starBoardMapper.getStarReply(bno , cri);
	}


	@Override
	public int pwCheck(StarBoardReplyVO vo) {
		return starBoardMapper.pwCheck(vo);
	}


	@Override
	public int starReplyUpdate(StarBoardReplyVO vo) {
		return starBoardMapper.starReplyUpdate(vo);
	}


	@Override
	public int starReplyDelete(StarBoardReplyVO vo) {
		return starBoardMapper.starReplyDelete(vo);
	}


	@Override
	public ArrayList<StarBoardVO> getList() {
		
		return starBoardMapper.getList();
	}


	@Override
	public StarBoardVO getBoardDetail(int bno) {
		return starBoardMapper.getBoardDetail(bno);
	}

	
	
	
	
}
