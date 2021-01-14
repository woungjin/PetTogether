<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
	<section>
        <div class="container">
         
            <div class="row">
                <div class="col-xs-12 col-sm-9 col-md-6 join-form">   
                    <div class="title-box">
                        <strong>회원 가입</strong>
                    </div>

                    <form action="join" method="post">
                        <p>*는 필수 사항입니다.</p>
                        <hr/>
                        <div class="form-group"> <!-- 부트스트랩 클래스 -->
                            <label>* 아이디</label>                   
                            <div class="input-group">
                                    <input type="text" class="form-control" placeholder="아이디를 입력해주세요" id="id">
                                <div class="input-group-btn">
                                    <button class="btn btn-primary" type="submit" id="idCheck">아이디 중복체크</button>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label>* 비밀번호</label>
                            <input type="password" class="form-control" id ="pw" placeholder="비밀번호는 8글자 이상입니다">
                        </div>

                        <div class="form-group">
                            <label>* 비밀번호 확인</label>
                            <input type="password" class="form-control" id="pwCheck" placeholder="비밀번호는 8글자 이상입니다">
                        </div>
                        
                        <div class="form-group">
                            <label for="name">이름</label>
                            <input type="text" class="form-control" name="name" id="name" placeholder="이름을 입력하세요.">
                        </div>
                        
                        <div class="form-group">
                            <label for="hp">휴대폰번호</label>
                            <div class="input-group">
								<select class="form-control phone1" name="phone1" id="phone1">
									<option>010</option>
									<option>011</option>
									<option>017</option>
									<option>018</option>
								</select> 
							<input type="text" class="form-control phone2" name="phone2" id="phone2" placeholder="휴대폰번호를 입력하세요.">
                            </div>
                        </div>
                        
                        <div class="form-group email-form">
						  <label for="email">이메일</label><br>
						  	<input type="text" class="form-control" name="email1" id="userEmail1" placeholder="이메일">
						  	<select class="form-control" name="email2" id="email2">
						    	<option>@naver.com</option>
						    	<option>@daum.net</option>
						    	<option>@gmail.com</option>
						    	<option>@hanmail.com</option>
						    	<option>@yahoo.co.kr</option>
						    	<option>직접선택</option>
						  	</select>
						</div>

                        <div class="form-group"> <!-- 부트스트랩 클래스 -->
                            <label> 주소</label>                   
                            <div class="input-group">
                                    <input type="text" class="form-control" placeholder="우편번호" id="zipNum">
                                <div class="input-group-btn">
                                    <button class="btn btn-primary" type="submit">주소찾기</button>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="시/군/구" id="basicAdd">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="상세주소" id="detailAdd">
                        </div>
                        
                        <div class="form-group">
                        	<label>* 비밀번호 찾기</label>
                        	<select id="pwQuiz" class="form-control">
                        		<option>나의 출신 초등학교는?</option>
                        		<option>나의 아버지 성함은?</option>
                        		<option>가장 좋아하는 음식은?</option>
                        		<option>내 첫사랑의 이름은?</option>
                        	</select>
                        </div>
                        
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="질문의 답변" id="pwAnswer">
                        </div>
                        
                        <div class="form-group">
                        	<label>* 당신의 가족은 누구인가요?</label>
                        	<select id="pet" class="form-control">
                        		<option>강아지</option>
                        		<option>고양이</option>
                        		<option>강아지+고양이</option>
                        		<option>기타</option>
                        	</select>
                        </div>
                        
                        <!-- 버튼 영역-->
                        <div class="form-group">
                            <button type="button" class="btn btn-primary btn-block">회원가입</button> <!-- 부트스트랩 클래스 -->
                            <button type="button" class="btn btn-default btn-block">로그인</button>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </section>
	
	<script>
	
	</script>