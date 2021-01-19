<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
	   
     	   
    <section style="margin-top: 70px;">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-9 col-xs-12 section-facebook"> <!-- 우측 사이드 -->
                    <div class="title-inner">
                        <div class="profile">
                            <p class="location">
                                어딘지모를공원
                            </p>

                            </div>

                        </div>


                    <div class="content-inner">
                    </div>
                    <div class="img-inner">
                        <img src="${pageContext.request.contextPath }/resources/img/freeBoard/love.png"  alt="이미지">
                    </div>
                    
                    <div class="mid-review-content">

                        <p class="mid-review-star">
                            <i>★</i>
                            <i>★</i>
                            <i>★</i>
                            <i>★</i>
                            <i>★</i> 
                            &nbsp;<span>(후기:128개)</span>
                            <span>소형견에게 추천 !</span>                           
                        </p>
                        
                    </div>
                    
                    <!-- 여기는 평점 넣기 , 그리고 추천할 강아지 !!!!!!!!! -->
                 
                        <div class="starAndRecom" id="starAndRecom">
                            <!--star insert-->
                            <div class="starInsert">
                                <div class="starInsert-left">
                                    <strong id="star-title">별점등록</strong> 
                                    <p style="margin: 0;" id="review_regist"><a href="#" id="1" >★</a>  <a href="#" id="2">★</a>  <a href="#" id="3">★</a>  <a href="#" id="4">★</a>  <a href="#" id="5">★</a> </p>
                                </div>
                                
                                <div class="starInsert-right">
                                
                                    <button type="button" class="right btn btn-info" id="starInsert">등록</button>
                                </div>
                            </div>

                            <!-- Recom insert selectBox-->
                            <div class="RecomInsert">
                                <div class="RecomInsert-left">
                                    추천종 &nbsp;
                                    
                                        <select id="recomValue">
                                            <option value="small">소형견</option>
                                            <option value="middle">중형견</option>
                                            <option value="big">대형견</option>
                                            <option value="cat">고양이</option>
                                            <option value="default">기타</option>
                                        </select>
                                   
                                </div>

                                <div class="RecomInsert-right">
                                    <button type="button" class="right btn btn-info" id="recomInsert">등록</button>
                                </div>
                            </div>
                        
                        </div>
                  

                    <!-- 댓글-->
                    <form class="reply-wrap">
                        
                        <div class="reply-content">
                            <textarea class="form-control" rows="3" id="reply"></textarea>

                            <div class="reply-group">
                                  <div class="reply-input">
                                  <input type="text" class="form-control" id="replyId" placeholder="이름">
                                  <input type="password" class="form-control" id="replyPw" placeholder="비밀번호">
                                  </div>
                                  
                                  <button type="button" class="right btn btn-info" id="replyRegist">댓글 등록</button>
                                  <button type="button" class="right btn btn-info" style="background-color:rgba(235,170,80) ;"  onclick="location.href='../freeBoard/freeReviewRegist'">게시글 남기기</button>
                            </div>
    
                        </div>
                        </form>
    
                       
                        <div id="replyList" style="margin-bottom: 80px;">
                        <div class='reply-wrap'>
                            <div class='reply-content'>
                                <div class='reply-group'>
                                    <strong class='left'>honggildong</strong> 
                                    <small class='left'>2019/12/10</small>
                                    <a href='#' class='right replyModify'><span class='glyphicon glyphicon-pencil'></span>수정</a>
                                    <a href='#' class='right replyDelete'><span class='glyphicon glyphicon-remove'></span>삭제</a>
                                </div>
                            
                                <p class='clearfix'>여기는 댓글영역</p>
                            </div>
                        </div>
                        
                        <button type="button" class="form-control" id="moreList">댓글 (더보기)</button>
                        </div>

                    </div>
                </div>
            </div>
        </section>

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
						<button class="right btn btn-info" id="modalModBtn">수정하기</button>
						<button class="right btn btn-info" id="modalDelBtn">삭제하기</button>
					</div>
					</div>
					<!-- 수정폼끝 -->
				</div>
			</div>
		</div>
	</div>


        <script>
        
        $(document).ready(function(){
        	
        	
        	var starInsert = document.getElementById("starInsert");
        	console.log(starInsert);
        	starInsert.onclick = function() {
        		var point = 0 ;
        		var stars = document.querySelectorAll("#review_regist > a");
        		for(var i = 0; i < stars.length ; i++){
        			if(stars[i].style.color === 'red') {
        				point ++ ;
        			}
        		}
        		
        		var bno = 1; 
        		var user_id = "test";
        		
        		$.ajax({
        			type : "POST",
        			url : "../freeBoard/starInsert",
        			data : JSON.stringify({"bno" : bno , "user_id" : user_id , "point" : point}),
        			contentType : "application/json; charset=utf-8",
        			success : function(data) {
        				if(data == 1){
        					$("#review_regist").html("리뷰등록 완료");
        					$("#star-title").html("");
        					$("#starInsert").css("display","none");
        				
        					
        				}
        				
        			},
        			error :function(error) {
        				alert("전송 실패 ! 관리자에게 문의하세요");
        			}
        			
        		});
        		
        		
        		
        	}
        	
        	
        	//추천강아지종류 insert
        	var recomInsert = document.getElementById("recomInsert");
        	recomInsert.onclick = function () {
        		var recomValue = document.getElementById("recomValue");
        		
        		var bno = 1;
        		var user_id = 'test';
        		var recom = recomValue.value
	        	
        		$.ajax({
        			type : "POST",
        			url : "../freeBoard/recomInsert",
        			data : JSON.stringify({"bno" : bno , "user_id" : user_id , "recom" : recom}),
        			contentType : "application/json; charset=utf-8",
        			success : function(data) {
        				if(data === 1){
        					$(".RecomInsert-left").html("추천등록완료");
        					$("#recomInsert").css("display", "none");
        				}
        			},
        			error : function(error) { 
        				alert("관리자에게 문의하세요");
        			}
        		});
	        	
	        	
	        	
	        	
        		
        	}
        	
        	
        	
        	
        	
        
        
        
        
        
        
            
        	// 사용자가 지정한 별의 개수를 화면으로 표현하는 코드 
            $("#review_regist").on("click" ,"a", function(){
                $("#review_regist").html("")
                event.preventDefault();
                
                var starNum = event.target.id;
                
            strAdd = "";
            for(var i=1; i< 6; i++) {
                if(i <= starNum ) {
                    strAdd += '<a href="#" id="' + i +'" style="color: red;">★</a> ';
                }else{
                    strAdd += '<a href="#" id="' + i +'" style="color: #CCCCC;">★</a> '
                }
                
            }
            
            $("#review_regist").html(strAdd);

            })


            
            
            
            
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
			
        });

        </script>