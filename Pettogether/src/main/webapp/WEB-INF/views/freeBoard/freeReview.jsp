<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<section class="content">
        <div class="container ">
            <div class="row ">
                <h3 style="text-align: center;">여기는 리뷰 top4</h3>

                <div class="col-md-3 col-sm-6 col-xs-12 content-img ">

                    <div class="list">
                        <div class="list-img">
                            
                            <a href="#">
                                <img src="${pageContext.request.contextPath }/resources/img/freeBoard/img_02.jpg"  data-toggle="modal" data-target="#myModal">
                            </a>
                            

                        </div>
                            
                         
                    
                        <div class="list-content">
                            
                            <p style="border-bottom : 1px solid #cccc">청남대 애견동반 버스패키지</p>
                            <div class="content-reivew" style="margin-top : 4px;">
                            
                                <p id="star_grade" class="content-left">
                                   <strong>김계환 </strong>&nbsp;
                                </p>&nbsp;
                                <p class="content-left"><small>2020-10-10</small></p> <br/>
                            </div>
                            
                            <div class="review-board">
                               <ul >
                                   <li>
                                       <a href="#">
                                           <img src="${pageContext.request.contextPath }/resources/img/freeBoard/love.png" alt="">
                                        </a>
                                   </li>
                                   <li>
                                      
                                       <textarea>몇글자까지가능하라나</textarea>
                                       
                                   </li>
                               </ul>
                                
                            </div>
                            
                            
                           
                        </div>
                        
                    </div>



                </div>
               



              
                <!-- 모달창  -->
                <div class="modal fade" id="myModal" role="dialog">
                  <div class="modal-dialog">
                  
                    <!-- Modal content-->
                    <div class="modal-content" >
                      <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">여기 진짜 재밌어요 </h4>
                      </div>
                      <div class="modal-body">
                        
                        <div class="mymodal-list">

                            <!--게시글의 이미지 -->
                            <div class="myModal-left">
                                <img src="img/img_01.jpg" alt="">
                            </div>
                            
                            <p>저번주에 강아지랑 놀러갔는데 너무너무 재밌게 놀다가 왔습니다 정말이지 다시는 이런 거 쓰고 싶지않네요 </p>
                             <div id="replyList" >
                                <div class='reply-wrap'>

                                    <div class="reply-group" style="border-bottom: 1px solid #cccccc;">

                                        <div class="reply-input">
                                        <textarea style="margin: 0px; width: 441px;height: 53px; resize: none;">asd</textarea>
                                        <input type="text" class="form-control" id="replyId" placeholder="이름">
                                        <input type="password" class="form-control" id="replyPw" placeholder="비밀번호">
                                        </div>
                                        
                                        <button type="button" class="right btn btn-info" id="replyRegist">등록하기</button>
                                  </div>



                                    <div class='reply-content' style="padding: 0;">
                                        <div class='reply-group'>
                                            <strong class='left'>honggildong</strong> 
                                            &nbsp;<small style="margin: 0;"> ★★★★★</small>
                                            <a href='#' class='right replyModify'><span class='glyphicon glyphicon-pencil '></span>수정</a>
                                            <a href='#' class='right replyDelete'><span class='glyphicon glyphicon-remove '></span>삭제</a>
                                        </div>
                                        <p class='clearfix'>여기는 댓글영역</p>
                                    </div>
                                
                                </div>
                                </div>
                            </div>

                        </div>
                        
                        
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                      </div>
                    </div>
                    
                  </div>
                </div>

                
                
            </div>
        	
      <!-- 댓글 수정 그리고 삭제 (리뷰)-->  	
      <div class="modal fade" id="replyModal" role="dialog">
		<div class="modal-dialog modal-md">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="btn btn-default pull-right" data-dismiss="modal">닫기</button>
					<h4 class="modal-title">댓글수정</h4>
				</div>
				<div class="modal-body">
					<!-- 수정폼 id값을 확인하세요-->
					<div class="reply-content">
					<textarea class="form-control" rows="4" id="modalReply" placeholder="내용입력"></textarea>
					<div class="reply-group">
						<div class="reply-input">
						    <input type="hidden" id="modalRno">
							<input type="password" class="form-control" placeholder="비밀번호" id="modalPw">
						</div>
						<button class="right btn btn-info " id="modalModBtn">수정하기</button>
						<button class="right btn btn-info " id="modalDelBtn">삭제하기</button>
					</div>
					</div>
					<!-- 수정폼끝 -->
				</div>
			</div>
		</div>
	</div>
        
        
        
        
        
        
        
                <!--페이지 네이션 -->
                <div class="container page-nav replyReview">
                    <ul class="pagination">
                        <li class="previous"><a href="#">Previous</a></li>
                        <li><a href="#">1</a></li>
                        <li class="active"><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li class="next"><a href="#">Next</a></li>
                    </ul>
                  <button type="button"  class="btn btn-default reviewReplyBtn" onclick="location.href='freeReviewRegist'">후기글쓰기</button>
                  </div>
        
    </section>

	
	<script>
	
	/*리뷰글에 댓글 수정 삭제 모달창*/
	$("#replyList").on("click" , "a",function() {
				event.preventDefault(); // 고유이벤트 중단 
				// 1. 수정버튼인지 삭제버튼인지 확인 
				// 현쟈 클릭한 a태그에 href안에 있는 rno번 호출 -> 모달창의 hidden태그로 옮겨보세요.
				// 제이쿼리 hasClass() 함구를 이용해서 처리...
					console.log($(this));
					var rno = $(this).attr("href");
					$("#modalRno").val(rno);
			
				if($(this).hasClass("replyModify")) {
					// 수정을 눌렀을 때 수정 창형식으로 변경
					$(".modal-title").html("댓글수정");
					$("#modalReply").css("display" , "inline");
					$("#modalModBtn").css("display","inline");
					$("#modalDelBtn").css("display","none");
					$("#replyModal").modal("show");				   	
				}else{
					// 삭제를 클릭시 삭제창 형식으로 변경
					$(".modal-title").html("댓글삭제");
					$("#modalReply").css("display","none"); // textarea숨김
					$("#modalModBtn").css("display","none");// 수정버튼 숨김
					$("#modalDelBtn").css("display","inline"); // 삭제버튼보임
					$("#replyModal").modal("show");				   	
					
				}
			});
	
	</script>
	



</body>
</html>