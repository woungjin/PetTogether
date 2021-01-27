package com.pet.starboard.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pet.command.MyGoodVO;
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
	public ArrayList<StarBoardVO> getList(Criteria cri) {
		
		return starBoardMapper.getList(cri);
	}


	@Override
	public StarBoardVO getBoardDetail(int bno) {
		return starBoardMapper.getBoardDetail(bno);
	}


	@Override
	public int getTotal() {
		return starBoardMapper.getTotal();
	}


	@Override
	public int hit(int bno) {
		return starBoardMapper.hit(bno);
	}


	@Override
	public ArrayList<StarBoardVO> getcate(String cate ,Criteria cri) {
		return starBoardMapper.getcate(cate, cri);
	}


	@Override
	public int cateToal(String cate) {
		return starBoardMapper.cateToal(cate);
	}


	@Override
	public StarBoardVO getStarReset(int bno) {
		return starBoardMapper.getStarReset(bno);
	}


	@Override
	public int starReplyTotal(int bno) {

		int result = starBoardMapper.starReplyTotal(bno);
		return result;
	}


	@Override
	public String getUserPw(StarBoardReplyVO vo) {
		
		return starBoardMapper.getUserPw(vo);
	}


	@Override
	public ArrayList<MyGoodVO> getMygood(String user_id) {
		return starBoardMapper.getMygood(user_id);
	}

	
	
	
	
}
