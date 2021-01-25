<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <section>
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-7 col-xs-10 login-form">
                    <div class="titlebox">
                    
                    </div>
                    <form action="findId" method="post" >
                        <div class="form-group"><!--사용자클래스선언-->
                        
                        	<div class="form-group">
	                            <label for="hp">휴대폰번호</label>
	                            <div class="input-group">
									<select class="form-control phone1"  id="phone1" name="phone1">
										<option>010</option>
										<option>011</option>
										<option>017</option>
										<option>018</option>
									</select> 
								<input type="text" class="form-control phone2" id="phone2" name="phone2" placeholder="-없이 입력해 주세요" maxlength="8">
								<span id="msgPhone"></span>
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
                            <button type="submit" class="btn btn-info btn-block" id="findIdBtn">아이디 찾기</button>
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