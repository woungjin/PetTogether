<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
       <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>



<section class="content">
        <div class="container">
            <div class="row">
                <h3 style="text-align: center;">여기는 ${cate}</h3>


				<c:forEach var="vo" items="${list }">
                <div class="col-md-3 col-sm-6 col-xs-12 content-img ">
					
                    <div class="list">
                        <div class="list-img">
                            
                                <a href="../starBoard/freeDetail?bno=${vo.bno }">
                                    <img src="${pageContext.request.contextPath }/resources/img/starboard/${vo.bno }.jpg" alt="">
                                </a>
                            

                        </div>
                            
                         
                    
                        <div class="list-content">
                            
                            <p >${vo.title }</p>
                            <div class="content-reivew">
                                <p id="star_grade" class="content-left">
                                
                                <c:forEach var="num" begin="1" end="5">
									<c:choose>
										<c:when test="${vo.review_avg >= num}"><i style=" color : red;">★</i></c:when>                                	
										<c:when test="${vo.review_avg <= num }"><i>★</i></c:when>
                                	</c:choose> 
                                	                            
                                </c:forEach>
                                
                                </p>
                                <p class="content-left"> &nbsp; <small>리뷰수</small> ${vo.review_total }</p>
                            </div>
                            	
                            	<p>
                                    
                                <span class="bad"  id="bad" >
                                    
                                   <!-- 1개만 출력돼도록 하면됌 -->
                                 	<c:set var="flag" value="false"></c:set>
                                 	<c:forEach var="goodvo" items="${mygoodVO}">
                                 		<c:choose>
                                 			
                                 			
                                 			<c:when test="${goodvo.bno == vo.bno }">
												<c:set var="flag" value="true" />		                                    	
                                 			</c:when>
                                 		</c:choose>
                                 	
                                 	</c:forEach>  
                                 	
                                 	<c:choose>
                                 		<c:when test="${flag eq true }">
		                                <img   src="${pageContext.request.contextPath }/resources/img/freeBoard/love2.png" alt=""  onclick="changeImg(${vo.bno})" >
                                 		
                                 		</c:when>
                                 		
                                 		<c:when test="${flag eq false }">
		                                <img   src="${pageContext.request.contextPath }/resources/img/freeBoard/love.png" alt=""  onclick="changeImg(${vo.bno})" >
                                 		
                                 		</c:when>
                                 	</c:choose>
                                   
                                </span>
                       			</p>
                            
                           
                        </div>
                        
                    </div>


                </div>

				</c:forEach>
				
                
                
            </div>
        </div>
                
                <form action="cateList" name="listForm">
                <div class="container page-nav">
                    <ul class="pagination">
                    	<c:if test="${pageVO.prev }">
                        	<li class="previous">
                        		<a href="${pageVO.statPage-1}" data-page="${pageVO.startPage-1 }">이전</a>
                        	</li>
                    	</c:if>
                    	<c:forEach var="num" begin="${pageVO.startPage }" end="${pageVO.endPage }" >
                        <li class="${num == pageVO.pageNum? 'active' : '' }"><a href="" data-page="${num }">${num }</a></li>
                    	</c:forEach>
                        
                    	<c:if test="${pageVO.next}">
                        <li class="next"><a href="#" data-page="${pageVO.endPage + 1 }">다음</a></li>
                    	</c:if>
                    </ul>
                  </div>
                  <input type="hidden" name="pageNum" value="${pageVO.cri.pageNum }">
				<input type="hidden" name="amount" value="${pageVO.cri.amount}"> 
				<input type="hidden" name="cate" value="${cate}"> 
				
                </form>
        
    </section>



<script>


			function changeImg(bno) {
					
					
					var user_id = "${sessionScope.userVO.id}";
					
					if(user_id == ''){
						alert("회원만 등록이가능하빈다");
						return;
					}
				
				if(event.target.attributes[0].nodeValue === "/project/resources/img/freeBoard/love2.png"){
					 event.target.attributes[0].nodeValue = "/project/resources/img/freeBoard/love.png";
					
					 $.getJSON(
						"../freeBoard/goodDelete/" + bno  + "/" + user_id ,
						function(data) {
						
							if(data !== 1) {
								alert("찜실패!");
							}
						}
					 );
					 
					
					return;
					
                }else if(event.target.attributes[0].nodeValue === "/project/resources/img/freeBoard/love.png") {
                	event.target.attributes[0].nodeValue = "/project/resources/img/freeBoard/love2.png";
                	
					
					$.getJSON(
							"../freeBoard/goodInsert/" + bno + "/" + user_id,
							function(data) {
								if(data !== true){
									alert("찜실패 !");
								} 
							}
						);
					 return;
                }else{
                    return ;
                }

				
			}
			
			

            var pagenation = document.querySelector(".pagination");
            pagenation.onclick = function() {
            	event.preventDefault(); 
            	if(event.target.tagName !== 'A') return;
            	
            	var pageNum = event.target.dataset.page;
            	console.log(pageNum);
            	
            	document.listForm.pageNum.value = pageNum;
            	
            	document.listForm.submit();
            }// list Form end
            
           



    </script>




