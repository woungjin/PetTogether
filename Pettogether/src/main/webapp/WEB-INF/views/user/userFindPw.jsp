<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <section>
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-7 col-xs-10 login-form">
                    <div class="titlebox">
                    
                    </div>
                    <form action="findPw" method="post" >
                        <div class="form-group"><!--사용자클래스선언-->
                        
                        	<div class="form-group"> <!-- 부트스트랩 클래스 -->
	                            <label>* 아이디</label>                   
	                            <div class="input-group">
	                                    <input type="text" class="form-control" placeholder="아이디를 입력해주세요" id="id" name="id">
	                            </div>
	                           
	                        </div>

                        	<div class="form-group">
	                        	<label>* 비밀번호 찾기</label>
	                        	<select id="quiz" class="form-control" name="quiz" name="quiz">
	                        		<option>나의 출신 초등학교는?</option>
	                        		<option>나의 아버지 성함은?</option>
	                        		<option>가장 좋아하는 음식은?</option>
	                        		<option>내 첫사랑의 이름은?</option>
	                        	</select>
	                        </div>
                        
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="질문의 답변" id="answer" name="answer">
                        </div>
                        
                         <div class="form-group">
                            <button type="submit" class="btn btn-info btn-block" id="findPwBtn">비밀번호찾기</button>
                            <button type="button" class="btn btn-primary btn-block" onclick="location.href='userLogin'">돌아가기</button>
                         </div>
                    </form>                              
                </div>
            </div>
        </div>
    </section>
    
    <script>
	    var msg = "${msg}";
		if(msg != ""){
			alert(msg);
		}
    </script>