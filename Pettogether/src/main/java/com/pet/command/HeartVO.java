package com.pet.command;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class HeartVO {
	
	private int bno;
	private String user_id;
	private String category;
	private String title;
	private int review_avg;
	private String petTag;
	private String address;
}
