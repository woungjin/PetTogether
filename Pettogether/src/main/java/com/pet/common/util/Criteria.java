package com.pet.common.util;

import lombok.Data;

@Data
public class Criteria {
	
	private int pageNum;
	private int amount;

	public Criteria() {
		this(1 , 8);
	}
	
	public Criteria(int pageNum , int amount ) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
	
	// ({cri.pageNum} -1) * {cri.amount} < rn and rn <= {cri.pageNum} * {cri.amount}
	// 

}
