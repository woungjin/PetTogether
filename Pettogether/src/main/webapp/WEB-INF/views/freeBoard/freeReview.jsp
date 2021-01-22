<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
           <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
       <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>


<section class="content">
        <div class="container ">
            <div class="row " id="reviewGet">

                <h3 style="text-align: center;">여기는 리뷰 top4</h3>

				
				<c:forEach var="vo" items="${list }" >
                <div class="col-md-3 col-sm-6 col-xs-12 content-img ">
                    <div class="list">
                        <div class="list-img">
                            <a href="#">
                                <img src="display/${vo['FILELOCA'] }/${vo['FILENAME']}"  data-toggle="modal" data-target="#myModal" id="reviewModal"  onclick="reviewBno(${vo['REVIEW_BNO'] })" >
                                
                                
                            </a>
                        </div>
                        <div class="list-content">
                            <p style="border-bottom : 1px solid #cccc">${vo['CONTENT'] }</p>
                            <div class="content-reivew" style="margin-top : 4px;">
                                <p id="star_grade" class="content-left">
                                   <strong>${vo['WRITER'] } </strong>&nbsp;
                                </p>&nbsp;
                                <p class="content-left"><small> <fmt:formatDate value="${vo['REGDATE']}" pattern="yyyy-MM-dd"/></small></p> <br/>
                            </div>
                            <div class="review-board">
                               <ul >
                                   <li>
                                  
                                       <a href="../starBoard/freeDetail?bno=${vo['BNO']}">
                                           <img src="${pageContext.request.contextPath }/resources/img/starboard/${vo['BNO'] }.jpg" alt="">
                                        </a>
                                   </li>
                                   <li>
                                       <textarea style="resize : none;" readonly>${vo['TITLE']} </textarea>
                                   </li>
                               </ul>
                            </div>
                        </div>
                    </div>
                </div>
				</c:forEach>
               



              
                <!-- 모달창  -->
                <div class="modal fade" id="myModal" role="dialog">
                  <div class="modal-dialog">
                  
                    <!-- Modal content-->
                    <div class="modal-content" >
                      <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">리뷰 글 상세보기 </h4>
                      </div>
                      <div class="modal-body">
                        
                        <div class="mymodal-list">

                            <!--게시글의 이미지 -->
                            <div class="myModal-left">
                                <img src="img/img_01.jpg" alt="" id="reviewDetailImg">
                            </div>
                            
                            <p id="reviewDetailContent">저번주에 강아지랑 놀러갔는데 너무너무 재밌게 놀다가 왔습니다 정말이지 다시는 이런 거 쓰고 싶지않네요 </p>
                             <div id="replyList" >
                                <div class='reply-wrap'>

                                    <div class="reply-group" style="border-bottom: 1px solid #cccccc;">

                                        <div class="reply-input">
                                        <textarea style="margin: 0px; width: 441px;height: 53px; resize: none;" id="replycontent"></textarea>
                                        <input type="text" class="form-control" id="replyId" placeholder="이름">
                                        <input type="password" class="form-control" id="replyPw" placeholder="비밀번호">
                                        </div>
                                        
                                        <button type="button" class="right btn btn-info" id="reviewReplyRegist">등록하기</button>
                                  </div>


									<div class="reviewReplyList">
                                    <div class='reply-content' style="padding: 0;">
                                        <div class='reply-group'>
                                            <strong class='left'>honggildong</strong> 
                                            <small class='left'>2019/12/10</small>
                                            <a href='#' class='right replyModify'><span class='glyphicon glyphicon-pencil '></span>수정</a>
                                            <a href='#' class='right replyDelete'><span class='glyphicon glyphicon-remove '></span>삭제</a>
                                        </div>
                                        <p class='clearfix'>여기는 댓글영역</p>
									</div>
                                    </div>
                                  </div>
                        
                       	 				<button type="button" class="form-control" id="moreList">댓글 (더보기)</button>
                        		</div>
                                
                                </div>
		                      <div class="modal-footer">
		                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		                      </div>
                                </div>
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
                <form action="freeReview" name="reviewPageForm">
                <div class="container page-nav replyReview">
                    <ul class="pagination">
                    <c:if test="${pageVO.prev}">
                        <li class="previous">
                        	<a href="#" data-page="${pageVO.startPage- 1}">Previous</a>
                        </li>
                    </c:if>
                        
                       <c:forEach var="num" begin="${pageVO.startPage }" end="${pageVO.endPage}">
                        <li  class="${num == pageVO.pageNum?'active':''}"><a href="#" data-page="${num}">${num }</a></li>
	                   </c:forEach>
	                   
	                   <c:if test="${pageVO.next }">    
                        <li class="next"><a href="#" data-page="${ pageVO.endPage + 1}">Next</a></li>
                        </c:if>
                    </ul>
                  </div>
				<input type="hidden" name="pageNum" value="${pageVO.cri.pageNum }">
				<input type="hidden" name="amount" value="${pageVO.cri.amount}">        
                </form>
                <input type="hidden" id="reviewregistbno">
                
    </section>
    
    <script>
    
    
    
 
  	// 리뷰 댓글 불러오기 
    	
  		var pageNum = 1;
    	var strAdd = '';
  		
    	function getReviewReply(reviewPageNum , reset) {
    		var reviewPage = reviewPageNum ;
    		var bno = $("#reviewregistbno").val();
    		if(reset == true){
    			pageNum = 1; 
    			strAdd = '';
    		}
    		console.log(bno + "bno");
    		
    		$.getJSON(
    			"getReviewReply/" + bno + "/" + reviewPage,
    			function(list){
    				
    				for(var i =0 ; i<list.length; i++){
    					strAdd += '<div class="reply-content" style="padding: 0;">';
    					strAdd += '<div class="reply-group">';
    					strAdd += '<strong class="left">'+list[i].review_reply_writer  +'</strong>'; 
    					strAdd += '<small class="left">'+timeStamp(list[i].regdate)+'</small>';
    					strAdd += '<a href="'+list[i].review_rno+'" class="right replyModify"><span class="glyphicon glyphicon-pencil "></span>수정</a>';
    					strAdd += '<a href="'+list[i].review_rno+'" class="right replyDelete"><span class="glyphicon glyphicon-remove "></span>삭제</a>';
    					strAdd += '</div>';
    					strAdd += '<p class="clearfix">'+list[i].review_reply_content+'</p>';
    					strAdd += '</div>';
    					
    					
    					
    				}
    				$(".reviewReplyList").html(strAdd);
    				
    			}
    				
    		)// get json end
    		
    		
    		
    		
    		
    	};// get List end  
 	
    	// 댓글 더보기 =================================================================================
    	$("#moreList").click(function() {
    		
    		getReviewReply(++pageNum , false );
    	});
    	
    	
    	
    	
			

	
	
    			
    
    function reviewBno(review_bno) {
    	$("#reviewregistbno").val(review_bno);
    /*rno 넘겨서 modal창이 값을 체워주기 */
    $.ajax({
    	type : "POST",
    	url : "../freeBoard/getReviewDetail",
    	data : JSON.stringify({"review_bno" : review_bno}),
    	contentType : "application/json; charset=ytf-8",
    	success : function(data){
    		
    		$("#reviewDetailContent").html(data.content);
    		$("#reviewDetailImg").attr("src" , "display/"+ data.fileLoca + "/" + data.fileName);
    		getReviewReply(1 , true);
    	},
    	error : function(error) {
    		
    		alert("관리자에게 문의하세요");
    		
    	}
    	
    	
    })// ajax end 
     
    
    
    
    } // reviewBno end 
    
    

    		
    		
    		var pagination = document.querySelector(".pagination");
    		pagination.onclick = function() {
    			event.preventDefault();// 고유 이벤트 중단
    			if(event.target.tagName !== "A") return; // A태그가 아니라면 종료
    			// a태긔의 pageNnm값을 가져와서 input타입에 value에 넣어서 값을 보내준다 그러고 다시 돌아와서 
    			// 값이 유지가 될 수 있다
    			console.log(1);
    			var pageNum = event.target.dataset.page; // 클릭한 타겟의 데이터셋 값
    			console.log(pageNum);
    			document.reviewPageForm.pageNum.value = pageNum;
    			
    			document.reviewPageForm.submit();// 폼 값 서브밋
    			
    			
    		}
    		
    		//==================================================================================== 댓글 등록 ============
    		$("#reviewReplyRegist").click(function() {
    			var review_reply_content = $("#replycontent").val();
    			var review_reply_writer = $("#replyId").val();
    			var review_reply_pw = $("#replyPw").val();
    			console.log(review_reply_content + review_reply_writer + review_reply_pw);
				if(review_reply_content == '' || review_reply_writer == '' || review_reply_pw ==''){
					alert("빈칸에 주의하세요");
					return;
				}    		
    			/* ${vo.review_bno} */
    			var bno = $("#reviewregistbno").val();
    		
    				$.ajax({
    			    	type : "POST",
    			    	url : "../freeBoard/reviewReplyRegist",
    			    	data : JSON.stringify({"review_bno" : bno , "review_reply_content" : review_reply_content , "review_reply_writer" : review_reply_writer , "review_reply_pw" : review_reply_pw}),
    			    	contentType : "application/json; charset=ytf-8",
    			    	success : function(data){
    			  			if(data === 1){
    			  				$("#replycontent").val("");
    			  				$("#replyId").val("");
    			  				$("#replyPw").val("");
    			  				alert("댓글달기 성공 !");
    			  				getReviewReply(1,true);
    			  				
    			  			}else{
    			  				alert("실패하였습니다");
    			  			}
    			    		
    			    		
    			    	},
    			    	error : function(error) {
    			    		
    			    		alert("관리자에게 문의하세요");
    			    		
    			    	}
    			})
    			
    			
    		})
    		
    		// 댓글 수정 btn ==============================================================================
    		$("#modalModBtn").click(function() {
    			var review_rno = $("#modalRno").val();
    			var modalReply = $("#modalReply").val();
    			var modalPw = $("#modalPw").val();
    			
    			if(review_rno == '' || modalReply =='' || modalPw == '' ){
    				alert("빈칸을 주의해주세요");
    				return ;
    			}
				
    			$.ajax({
    				type : "POST",
    				url : "reviewReplyUpdate",
    		    	data : JSON.stringify({"review_rno" : review_rno , "review_reply_content" : modalReply , "review_reply_pw" : modalPw}),
    		    	contentType : "application/json; charset=ytf-8",
					success : function(data){
						if(data == 1){
							alert("업데이트성공 ! ");
							$("#modalReply").val("");
							$("#modalPw").val("");
							getReviewReply( 1 , true );
							$("#replyModal").modal("hide");
							
							
						}else if(data == 0){
							alert("업테이트 실패 !")
						}else if (data == 2){
							alert("비밀번호가 틀렸습니다")
							$("#modalPw").val("");
						}
					
					},
					error : function(error){
						alert("수정에 실패했습니다 관리자에게 문의하세요");
					}
    			})
    			
    			console.log(review_rno );
    			
    			
    			
    		});
    		// ====================================== 댓글 삭제 ==============================
    	$("#modalDelBtn").click(function() {
    		
    		var review_rno = $("#modalRno").val();
			var modalPw = $("#modalPw").val();
			
			$.ajax({
				type : "POST",
				url : "reviewReplyDelete",
		    	data : JSON.stringify({"review_rno" : review_rno , "review_reply_pw" : modalPw}),
		    	contentType : "application/json; charset=ytf-8",
				success : function(data ){
					if(data == 1){
						alert("삭제 성공 !");
						$("#modalPw").val("");
						$("#replyModal").modal("hide");
						getReviewReply( 1 , true );
					}else if(data == 2){
						alert("비밀번호가 틀렸습니다");
						$("#modalPw").val("");
						
					}else if(data == 0){
						
						alert("삭제를 실패하였습니다 ");
						$("#modalPw").val("");
						
					}
				
					
				},
				error : function(error ){
					alert("실패했습니다 관리자에게 문의하세요")
				
				}
    		
			});
    		
    	}) //replyDel Btn
    
    	
 
    
    </script>

	
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
					console.log(rno);
			
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
	



</body>
</html>