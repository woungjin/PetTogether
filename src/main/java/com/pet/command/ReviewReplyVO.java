package com.pet.command;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ReviewReplyVO {
	
		private int review_rno;
	    private int review_bno; 
	    private String review_reply_writer;
	    private String review_reply_pw ;
	    private String review_reply_content; 
	    private Timestamp regdate;
	    private Timestamp updatedate;

}
