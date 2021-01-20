package com.pet.starboard.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.pet.command.StarBoardReplyVO;
import com.pet.command.StarBoardVO;
import com.pet.common.util.Criteria;

public interface StarBoardMapper {
	public int starReplyInsert(StarBoardReplyVO vo); // 댓글등록
	public ArrayList<StarBoardReplyVO> getStarReply(@Param("bno") int bno, @Param("cri") Criteria cri); // 댓글불러오기
	public int pwCheck(StarBoardReplyVO vo);
	public int starReplyUpdate(StarBoardReplyVO vo); // 댓글 수정 메서드
	public int starReplyDelete(StarBoardReplyVO vo);
	public ArrayList<StarBoardVO> getList();
	public StarBoardVO getBoardDetail(int bno);
}
