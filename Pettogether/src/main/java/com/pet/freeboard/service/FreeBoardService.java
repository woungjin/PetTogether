package com.pet.freeboard.service;

import com.pet.command.MyGoodVO;
import com.pet.command.ReviewRegistVO;

public interface FreeBoardService {
	
	public int myGoodInsert(MyGoodVO vo);
	public int myGoodDelete(MyGoodVO vo);
	
	public boolean fileInsert(ReviewRegistVO vo);
	
}
