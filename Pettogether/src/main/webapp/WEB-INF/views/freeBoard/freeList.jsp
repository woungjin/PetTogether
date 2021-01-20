<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
       <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<section class="category_set" style="background-color: rgba(235,170,80);">
	

	<div class="category" >

		<ul>
			<li><a href="#">진웅</a></li>
			<li><a href="#">계환</a></li>
			<li><a href="#">동건</a></li>
			<li><a href="#">대영</a></li>
		</ul>
	</div>

</section>

<section class="content">
        <div class="container">
            <div class="row">
                <h3 style="text-align: center;">여기는 리뷰 top4</h3>


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
                                   <i>★</i>
                                   <i>★</i>
                                   <i>★</i>
                                   <i>★</i>
                                   <i>★</i>
                                </p>
                                <p class="content-left">리뷰수 ${vo.review_total }</p>
                            </div>
                            	
                            	<p>
                                    
                                <span class="bad"  id="bad" >
                                    
                                    <img   src="${pageContext.request.contextPath }/resources/img/freeBoard/love.png" alt=""  onclick="changeImg()">
                                   
                                </span>
                       			</p>
                            
                           
                        </div>
                        
                    </div>


                </div>

				</c:forEach>
				
                
                
            </div>
        </div>
                
                <div class="container page-nav">
                    <ul class="pagination">
                        <li class="previous"><a href="#">Previous</a></li>
                        <li><a href="#">1</a></li>
                        <li class="active"><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li class="next"><a href="#">Next</a></li>
                    </ul>
                  </div>
        
    </section>



<script>
			function changeImg() {
				
					var bno = 1;
					var user_id = "test";
				
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
			
			

            
            
           



    </script>




