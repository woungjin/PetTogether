package com.pet.command;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class StarBoardVO {
	
	private int bno ;
	private String category;
	private String title ;
	private String content;
	private int review_avg;
	private int review_total;
	private String petTag;
	private String address;
	private String postal;
	private int hit;
	private Timestamp regdate;
	

}
