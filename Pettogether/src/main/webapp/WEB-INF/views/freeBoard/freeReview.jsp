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
                                            <a href='#' class='right'><span class='glyphicon glyphicon-pencil'></span>수정</a>
                                            <a href='#' class='right'><span class='glyphicon glyphicon-remove'></span>삭제</a>
                                        </div>
                                        <p class='clearfix'>여기는 댓글영역</p>
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
                  <button type="button"  class="btn btn-default reviewReplyBtn">후기글쓰기</button>
                  </div>
        
    </section>





</body>
</html>