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
                        <p># 강아지 #고양이</p>
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

                    <!-- 댓글-->
                    <form class="reply-wrap">
                        
                        <div class="reply-content">
                            <textarea class="form-control" rows="3" id="reply"></textarea>
                                <p style="margin: 0;" id="review_regist"><a href="#" id="1" style="color: red;">★</a>  <a href="#" id="2">★</a>  <a href="#" id="3">★</a>  <a href="#" id="4">★</a>  <a href="#" id="5">★</a> </p>

                            <div class="reply-group">
                                  <div class="reply-input">
                                  <input type="text" class="form-control" id="replyId" placeholder="이름">
                                  <input type="password" class="form-control" id="replyPw" placeholder="비밀번호">
                                  </div>
                                  
                                  <button type="button" class="right btn btn-info" id="replyRegist">등록하기</button>
                            </div>
    
                        </div>
                        </form>
    
                       
                        <div id="replyList" style="margin-bottom: 80px;">
                        <div class='reply-wrap'>
                            <div class='reply-content'>
                                <div class='reply-group'>
                                    <strong class='left'>honggildong</strong> 
                                    <small class='left'>2019/12/10</small>
                                    <a href='#' class='right'><span class='glyphicon glyphicon-pencil'></span>수정</a>
                                    <a href='#' class='right'><span class='glyphicon glyphicon-remove'></span>삭제</a>
                                </div>
                            <p>
                                <i>★</i>
                                <i>★</i>
                                <i>★</i>
                                <i>★</i>
                                <i>★</i> 
                            </p>
                                <p class='clearfix'>여기는 댓글영역</p>
                            </div>
                        </div>
                        
                        <button type="button" class="form-control" id="moreList">댓글 (더보기)</button>
                        </div>

                        
                        
                        
                        
                        
                        
                    </div>
                </div>
            </div>
        </section>

        <script>
            
            $("#review_regist").on("click" ,"a", function(){
                $("#review_regist").html("")
                event.preventDefault();
                
                var starNum = event.target.id;
                
            strAdd = "";
            for(var i=1; i< 6; i++) {
                if(i <= starNum ) {
                    console.log(i)
                    strAdd += '<a href="#" id="' + i +'" style="color: red;">★</a> ';
                }else{
                    strAdd += '<a href="#" id="' + i +'" style="color: #CCCCC;">★</a> '
                }
                
            }
            console.log(strAdd)
            $("#review_regist").html(strAdd);

            })



        </script>