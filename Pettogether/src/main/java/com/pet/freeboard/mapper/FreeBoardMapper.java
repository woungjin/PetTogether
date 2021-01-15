package com.pet.freeboard.mapper;

import com.pet.command.MyGoodVO;
import com.pet.command.ReviewRegistVO;

public interface FreeBoardMapper {
	public int myGoodInsert(MyGoodVO vo);
	public int myGoodDelete(MyGoodVO vo);
	public boolean fileInsert(ReviewRegistVO vo);
}
