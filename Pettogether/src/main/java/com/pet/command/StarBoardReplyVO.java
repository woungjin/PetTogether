package com.pet.command;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class StarBoardReplyVO {
	
	private int rno;
	private int bno;
	private String writer;
	private String pw;
	private String content;
	private Timestamp regdate;
	private Timestamp updatedate;

}
