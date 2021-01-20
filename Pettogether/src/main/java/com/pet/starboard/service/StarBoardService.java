package com.pet.starboard.service;

import java.util.ArrayList;

import com.pet.command.StarBoardReplyVO;
import com.pet.command.StarBoardVO;
import com.pet.common.util.Criteria;

public interface StarBoardService {
	
	public int starReplyInsert(StarBoardReplyVO vo);
	public ArrayList<StarBoardReplyVO> getStarReply(int bno , Criteria cri); // 댓글불러오기
	public int pwCheck(StarBoardReplyVO vo); // 수정삭제시 비밀번호 검사
	public int starReplyUpdate(StarBoardReplyVO vo); // 댓글 수정 메서드
	public int starReplyDelete(StarBoardReplyVO vo);
	public ArrayList<StarBoardVO> getList();// 전체게시글
	public StarBoardVO getBoardDetail(int bno);
	
}
