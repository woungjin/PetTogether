<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
       <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	
	   
     	   
    <section style="margin-top: 70px;">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-9 col-xs-12 section-facebook"> <!-- 우측 사이드 -->
                    <div class="title-inner">
                        <div class="profile">
                            <p class="location">
                                 ${vo.title }
                                <small style="font-size: 20px;">조회수 : ${vo.hit }</small>
                            </p>

                            </div>

                        </div>


                    <div class="content-inner">
                    </div>
                    <div class="img-inner">
                        <img src="${pageContext.request.contextPath }/resources/img/starboard/${vo.bno }.jpg" alt="">
                    </div>
                    
                    <div class="mid-review-content">

                        <p class="mid-review-star">
                            ${vo.content }                 
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

                         
                            <div class="RecomInsert">
                                 <div class="RecomInsert-left">
                                   <c:forEach var="num" begin="1" end="5">
									<c:choose>
										<c:when test="${vo.review_avg >= num}"><i style=" color : red;">★</i></c:when>                                	
										<c:when test="${vo.review_avg <= num }"><i>★</i></c:when>
                                	</c:choose> 
                                </c:forEach>
                                    &nbsp;<span>(후기:${vo.review_total }개)</span>
                                    <span>'${vo.petTag } '에게 추천합니다</span>      
                                   
                                </div>

                            </div>
                        
                        </div>
                  
					
					
					
                    <!-- 댓글-->
                       <div id="replyList" style="margin-bottom: 80px;">
                    <form class="reply-wrap">
                        
                        <div class="reply-content">
                            <textarea class="form-control" rows="3" id="reply"></textarea>

                            <div class="reply-group">
                                  <div class="reply-input">
                                  <input type="text" class="form-control" id="replyId" placeholder="이름">
                                  <input type="password" class="form-control" id="replyPw" placeholder="비밀번호">
                                  </div>
                                  
                                  <button type="button" class="right btn btn-info" id="replyRegist">댓글 등록</button>
                                  <button type="button" class="right btn btn-info" style="background-color:rgba(235,170,80) ;"  onclick="location.href='../freeBoard/freeReviewRegist?bno=${vo.bno}'">게시글 남기기</button>
                            </div>
    
                        </div>
                        </form>
    
                       		<div id="starReplyList">
                            <div class='reply-content'>
                                <div class='reply-group'>
                                    <strong class='left'>honggildong</strong> 
                                    <small class='left'>2019/12/10</small>
                                    <!--a 태그에 bno -->
                                    <a href='#' class='right replyModify'><span class='glyphicon glyphicon-pencil'></span>수정</a>
                                    <a href='#' class='right replyDelete'><span class='glyphicon glyphicon-remove'></span>삭제</a>
                                </div>
                       		</div>
                            
                                <p class='clearfix'>여기는 댓글영역</p>
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
        	user_id =  "${sessionScope.userVO.id}";
        	
        	
        	// 댓글 삭제 +======================================
        	$("#modalDelBtn").click(function() {
        		var rno = $("#modalRno").val();
        		var pw = $("#modalPw").val();
        		
        		if(pw == ''){
        			alert("비밀번호를 입력해주세요");
        		}        		
        		
        		$.ajax({
        			type : "POST",
    				url : "../starBoard/starReplyDelete",
    				data : JSON.stringify({"rno" : rno , "pw": pw}),
    				contentType : "application/json; charset=utf-8",
    				success : function(data) {
    					console.log(data);
    					if(data == 1){
    						alert("삭제성공!");
    						getStarReply(1, true);
    						$("#modalPw").val("");
    						$("#replyModal").modal("hide");
    					}else if(data == 2){
    						alert("비밀번호를 확인해주세요");
    						$("#modalPw").val("");
    					}else{
    						alert("삭제에 실패했습니다 ")	;
    					}
    					
    					
    					
    				},error : function(error){
    					alert("삭제에 실패했습니다 관리자에게 문의하세요");
    				}
    				
    			
        			
        		})
        		
        	}); // delete end	
        	
        	
        	
        	// 댓글 수정 ===========================================
        	$("#modalModBtn").click(function() {
        		
  	      		var rno = $("#modalRno").val();
  	      		var content = $("#modalReply").val();
  	      		var pw = $("#modalPw").val();
  	      		
  	      		if(content == '' || pw == ''){
  	      			alert("빈칸을 주의해주세여");
  	      			return;
  	      		}
  	      		
  	      		
  	      		$.ajax({
    				type : "POST",
    				url : "../starBoard/starReplyUpdate",
    				data : JSON.stringify({"rno" : rno , "pw": pw, "content" : content}),
    				contentType : "application/json; charset=utf-8",
    				success : function(data) {
    					console.log(data);
    					if(data == 1){
    						alert("업데이트성공");
    						getStarReply(1, true);
    						$("#modalPw").val("");
    						$("#modalReply").val("");
    						$("#replyModal").modal("hide");
    						
    					}else if(data == 2){
    						alert("비밀번호가 틀렸습니다");
    						$("#modalPw").val("");
    						
    					}else {
    						alert("수정에실패했습니다 ")	;
    					}
    				},
    				error : function(error) {
    					alert("실패했습니다 관리자에게 문의 하세요");
    				}
  	      		})
  	      		
  	      		console.log(rno)
  	      		
  	      		
  	      		
        		
        	});
        	
        	
        	
        	
        	// 댓글 불러오기 ===============================================================================
    		var strAdd = '';
        	var page = 1;
        	
	        //BNO는 딕테일 화면으로 넘어올때 보드VO를 넘겨주도록하고 그곳에서 BNO를 꺼내온다
        	getStarReply(1, true);
    		function getStarReply(pageNum, reset) {
    			/*여기도 bno값을 뺴와서 넣어줘야 합니다*/
    			var starPage = pageNum;
    			var bno = ${vo.bno};
    			
    			if(reset == true){
    				page = 1;
    				strAdd = '';
    			}
    			
    			$.getJSON(
    				"../starBoard/getStarReply/" + bno + "/" + starPage ,
    				function(list) {
    					console.log(list);
    					
    					for(var i =0 ; i< list.length ; i++){
    					 strAdd+= "<div class='reply-wrap'>";
    					 strAdd += "<div class='reply-content'>";
    					 strAdd += "<div class='reply-group'>";
    					 strAdd += "<strong class='left'>"+list[i].writer+"</strong>"; 
    					 strAdd += "<small class='left'>"+timeStamp(list[i].regdate)+"</small>";
   						 strAdd += "<a href='"+list[i].rno+"' class='right replyModify'><span class='glyphicon glyphicon-pencil'></span>수정</a>";
    					 strAdd += "<a href='"+list[i].rno+"' class='right replyDelete'><span class='glyphicon glyphicon-remove'></span>삭제</a>";
    					 strAdd += "</div>";
    					 strAdd += "<p class='clearfix'>"+list[i].content+"</p>";
    					 strAdd += " </div>";
    					 strAdd += " </div>";
    					
    					}
    					
    					$("#starReplyList").html(strAdd);    					
    					
    				}
    			
    			)
    			
    			
    		} // getReply end====================================================================
    		
        	// 댓글더보기 ---------------------------------------------------------
        	$("#moreList").click(function() {
        		getStarReply(++page , false);
        	});
        		
        	
        	// 댓글등록 ===================================================================================
        	$("#replyRegist").click(function() {
        		var reply = $("#reply").val();
        		var replyId = $("#replyId").val();
        		var replyPw = $("#replyPw").val();
        		
        		console.log(reply, replyId , replyPw);
        		
        		if(reply == '' || replyId == '' || replyPw == ''){
        			alert("공백을 주의 해주세요");	
        			return;
        		}
        		/*bno  여기에 처리하도록*/
        		var bno = ${vo.bno};
        		$.ajax({
        			type : "POST",
        			url : "../starBoard/starBoardReplyInsert",
        			data : JSON.stringify({"bno" : bno , "writer" : replyId , "pw" : replyPw  , "content" : reply}),
        			contentType : "application/json; charset=utf-8",
        			success : function(data ){
        				console.log(data);
        				alert("댓글등록완료");
        				getStarReply(1 , true);
        				$("#reply").val("");
                		$("#replyId").val("");
                		$("#replyPw").val("");
        				
        			},
        			error :function(error){
        				alert("실패했습니다 관리자에게 문의하세요");
        				
        			}
        		})
        		
        	});
        	
        	
        	
        	// 별점 등록 ======================================================
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
        		
        		var bno = ${vo.bno}; 
        		var user_id = "${sessionScope.userVO.id}";
        		if(user_id ==''){
        			alert("로그인 후 이용해주세요");
        			return;
        			
        		}
        		
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
        				
        					
        				}else{
        					alert("이미리뷰등록에 참가하셨습니다");
        				}
        				
        			},
        			error :function(error) {
        				alert("전송 실패 ! 관리자에게 문의하세요");
        			}
        			
        		});
        		
        		
        		
        	}
        	
        	
        
	        	
	        	
	        	
        		
        	
        	
            
        	// 사용자가 지정한 별의 개수를 화면으로 표현하는 코드  =====================================
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
			
        }); // 레디함수 종료 

     // javascript에서 날짜 포맷팅 ===================================================================
    	function timeStamp(millis){
    		
    			var now = new Date(); // 현재시간
    			var gap = now.getTime() - millis; // 현재시감밀리초 - 작성밀리초

    			var time; // 리턴할 문자열
    			if(gap < 1000 * 60 * 60 * 24){ //1일에 대한 밀리초
    				
    				if(gap < 1000 * 60 * 60){ // 1시간 미만인 경우
    					if(parseInt(gap /(1000 * 60)) < 1){
    						time = "방금전"
    					}else{
    					time = parseInt(gap /(1000 * 60))  + "분전";
    						
    					}
    						
    				}else{ // 1시간 ~ 1일미만
    					time = parseInt( gap/(1000 * 60 * 60)) + "시간전";							
    				}
    				
    				
    			}else{
    				
    				var date = new Date(millis);
    				var year = date.getFullYear();
    				var month = date.getMonth() + 1;
    				var day = date.getDate();
    				var hour = date.getHours();
    				var minute = date.getMinutes();
    				var second = date.getSeconds();
    				
    				time = year + "년" + month + "월" + day +"일 " + 
    				(hour < 10 ? "0" + hour : hour) + "시" +
    				(minute < 10 ? "0" + minute : minute) + "분" + 
    				(second < 10 ? "0" + second : second) + "초";
    			}
    			 
    			return time;
    		};
        
        
        </script>