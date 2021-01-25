package com.pet.command;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MyReviewVO {

	private int review_bno;
	private int bno;
	private String id;
	private String writer;
	private String content;
	
}
