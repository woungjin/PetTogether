package com.pet.command;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ReviewRegistVO {
	
	private int review_bno;
	private String writer;
	private String content;
	private String uploadPath;
	private String fileLoca;
	private String fileName;
	private String fileRealName;
	private Timestamp regdate;
	

}
