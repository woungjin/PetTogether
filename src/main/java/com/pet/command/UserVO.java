package com.pet.command;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class UserVO {

	private String id;
	private String pw;
	private String name;
	private String phone1;
	private String phone2;
	private String email1;
	private String email2;
	private String basicAdd;
	private String detailAdd;
	private String zipNum;
	private String quiz;
	private String answer;
	private String petTag;
	private Timestamp regdate;
	
}