package com.pet.common.util;

import lombok.Data;

@Data
public class PageVO {
	
	private int startPage;
	private int endPage ;
	private boolean prev;
	private boolean next;
	
	private int pageNum ;
	private int amount;
	private int total; 
	
	private Criteria cri;
	
	public PageVO(Criteria cri , int total) {
		this.pageNum = cri.getPageNum();
		this.amount = cri.getAmount();
		this.total =total;
		this.cri = cri;
		
		this.endPage = (int)Math.ceil(this.pageNum / (double) 10 ) * 10 ;
		
		this.startPage = endPage - 10 + 1; 
		
		int realEnd = (int) Math.ceil(this.total /(double) this.amount);
		
		
		if(realEnd < endPage) { 
			this.endPage = realEnd;
		}
		
		
		this.prev = this.startPage > 1;
		
		
		this.next = realEnd > this.endPage;
		
		
		
	}
	
	
	

}
