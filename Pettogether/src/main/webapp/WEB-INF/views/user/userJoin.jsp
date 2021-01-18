<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
	<section>

        <div class="container">
         
            <div class="row">
                <div class="col-xs-12 col-sm-9 col-md-6 join-form">   

                    <form action="join" method="post" id="joinForm">
                        <p>*는 필수 사항입니다.</p>
                        <hr/>
                        <div class="form-group"> <!-- 부트스트랩 클래스 -->
                            <label>* 아이디</label>                   
                            <div class="input-group">
                                    <input type="text" class="form-control" placeholder="아이디를 입력해주세요" id="id" name="id">
                                <div class="input-group-btn">
                                    <button type="button" class="btn btn-primary" id="idCheckBtn" >아이디 중복체크</button>
                                </div>
                            </div>
                            <span id="msgId"></span>
                        </div>


                        <div class="form-group">
                            <label>* 비밀번호</label>
                            <input type="password" class="form-control" id ="pw" name="pw" placeholder="비밀번호는 8글자 이상입니다">
                             <span id="msgPw"></span><!--자바스크립트에서 추가-->
                        </div>

                        <div class="form-group">
                            <label>* 비밀번호 확인</label>
                            <input type="password" class="form-control" id="pwCheck" name="pwCheck" placeholder="비밀번호는 8글자 이상입니다">
                            <span id="msgPw-c"></span><!--자바스크립트에서 추가-->
                        </div>
                        
                        <div class="form-group">
                            <label for="name">이름</label>
                            <input type="text" class="form-control" id="name" name="name" placeholder="이름을 입력하세요.">
                        </div>
                        
                        <div class="form-group">
                            <label for="hp">휴대폰번호</label>
                            <div class="input-group">
								<select class="form-control phone1"  id="phone1" name="phone1">
									<option>010</option>
									<option>011</option>
									<option>017</option>
									<option>018</option>
								</select> 
							<input type="text" class="form-control phone2" id="phone2" name="phone2" placeholder="휴대폰번호를 입력하세요.">
                            </div>
                        </div>
                        
                        <div class="form-group email-form">
						  <label for="email">이메일</label><br>
						  	<input type="text" class="form-control"  id="email1" name="email1" placeholder="이메일">
						  	<select class="form-control"  id="email2" name="email2">
						    	<option value="@naver.com" id="naver">@naver.com</option>
						    	<option value="@gmail.com" id="gmail">@gmail.com</option>
						    	<option value="@hanmail.com" id="hanmail">@hanmail.com</option>
						    	<option value="@nate.com" id="nate">@nate.com</option>
						  	</select>
						</div>

                        <div class="form-group"> <!-- 부트스트랩 클래스 -->
                            <label> 주소</label>                   
                            <div class="input-group">
                                    <input type="text" class="form-control" placeholder="우편번호" id="zipNum" name="zipNum">
                                <div class="input-group-btn">
                                    <button class="btn btn-primary" type="button" onclick="goPopup()">주소찾기</button>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="시/군/구" id="basicAdd" name="basicAdd" >
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="상세주소" id="detailAdd" name="detailAdd" >
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
                        	<label>* 당신의 가족은 누구인가요?</label>
                        	<select id="petTag" class="form-control" name="petTag">
                        		<option>없음</option>
                        		<option>강아지</option>
                        		<option>고양이</option>
                        		<option>강아지+고양이</option>
                        		<option>기타</option>
                        	</select>
                        </div>
                        
                        <!-- 버튼 영역-->
                        <div class="form-group">
                            <button type="button" class="btn btn-primary btn-block" id="joinBtn">회원가입</button> <!-- 부트스트랩 클래스 -->
                            <button type="button" class="btn btn-default btn-block" onclick="location.href='userLogin'">로그인</button>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </section>
	
	
	
	<!-- 아이디 중복체크 -->
    <script type="text/javascript">
		
    $("#idCheckBtn").click(function(){
    	
    	if($("#id").val() == ""){
    		alert("아이디를 입력하세요.")
    		return;
    	}
    	
    	var id = $("#id").val();
 
    	//비동기
    	$.ajax({
    		type: "POST",
    		url: "idCheck",
    		data: JSON.stringify({"id": id}),
    		contentType: "application/json; charset=utf-8",
    		success: function(data){
    			if(data === 0){	// 중복이 아닌 경우
    				$("#id").attr("readonly",true);	// 리드온리 속성이 변경
    				$("#msgId").html("사용가능한 아이디 입니다");
    			}else{	// 아이디 중복인 경우
    				$("#msgId").html("중복된 아이디 입니다")
    			}
    		},
    		error: function(status, error){
    			alert("서버에러 입니다.관리자에게 문의하세요");
    		}
    	});
    	
    });
    
    // 폼 검증
    
    $("#joinBtn").click(function(){
    	
    	if( !$("#id").attr("readonly") ){	// 아이디가 중복체크된 경우 서브밋.
    		alert("아이디 중복체크는 필수입니다.");
    		return;
    	}else if($("#pw").val() ==''||$("#pw").val() != $("#pwCheck").val() ){
    		alert("비밀번호 규칙을 확인하세요");
    		$("#pw").focus();
    		return;
    	}else if($("#name").val()==''){
    		alert("이름은 필수입니다.");
    		$("#name").focus();
    		return;
    	}else{
    		$("#joinForm").submit();	// 전송
    	}
    })
	</script>
	
<!-- 주소 팝업 -->    
 <script type="text/javascript">
   function goPopup(){
      var pop = window.open("${pageContext.request.contextPath}/resources/popup/jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
   }
   
   function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,detBdNmList,bdNm,bdKdcd,siNm,sggNm,emdNm,liNm,rn,udrtYn,buldMnnm,buldSlno,mtYn,lnbrMnnm,lnbrSlno,emdNo){
	   // 콜백으로 받아온 데이터를 가입폼에 입력.
	   document.getElementById("basicAdd").value = roadAddrPart1;
	   document.getElementById("detailAdd").value = addrDetail;
	   document.getElementById("zipNum").value = zipNo;
   }
 </script>
    
    
    
  

    <script>
        /*아이디 형식 검사 스크립트*/
        var id = document.getElementById("id");
        id.onkeyup = function() {
            /*자바스크립트의 정규표현식 입니다*/
            /*test메서드를 통해 비교하며, 매칭되면 true, 아니면 false반*/
            var regex = /^[A-Za-z0-9+]{4,12}$/; 
            if(regex.test(document.getElementById("id").value )) {
                document.getElementById("id").style.borderColor = "green";
                document.getElementById("msgId").innerHTML = "아이디중복체크는 필수 입니다";

            } else {
                document.getElementById("id").style.borderColor = "red";
                document.getElementById("msgId").innerHTML = "";
            }
        }
        /*비밀번호 형식 검사 스크립트*/
        var pw = document.getElementById("pw");
        pw.onkeyup = function(){
            var regex = /^[A-Za-z0-9+]{8,16}$/;
             if(regex.test(document.getElementById("pw").value )) {
                document.getElementById("pw").style.borderColor = "green";
                document.getElementById("msgPw").innerHTML = "사용가능합니다";
            } else {
                document.getElementById("pw").style.borderColor = "red";
                document.getElementById("msgPw").innerHTML = "";
            }
        }
        /*비밀번호 확인검사*/
        var pwConfirm = document.getElementById("pwCheck");
        pwConfirm.onkeyup = function() {
            var regex = /^[A-Za-z0-9+]{8,16}$/;
            if(document.getElementById("pwCheck").value == document.getElementById("pw").value ) {
                document.getElementById("pwCheck").style.borderColor = "green";
                document.getElementById("msgPw-c").innerHTML = "비밀번호가 일치합니다";
            } else {
                document.getElementById("pwCheck").style.borderColor = "red";
                document.getElementById("msgPw-c").innerHTML = "비밀번호 확인란을 확인하세요";
            }
        }        
    </script>

