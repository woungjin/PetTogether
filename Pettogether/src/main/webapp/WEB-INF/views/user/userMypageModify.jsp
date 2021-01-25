<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!-- 회원정보 -->
  <div class="mypage">
    
    <main class="traveler">
        <div class="traveler-container clearfix">
            <div class="sidebar-heading">회원 정보 수정</div>
            <div class="traveler-sidebar">
                <div class="sidebar-wrapper">
                    <div class="profile-container box">
                        <div class="profile">
                            <img alt="여행자 사진" class="img-circle" src="//d2yoing0loi5gh.cloudfront.net/assets/default/user_profile_image-414acc60b27f0a258bec14c82b70dc361fc6768da9289f924f887bec1fc33849.png" width="80">
                        </div>
                        <div class="username">
                            ${sessionScope.userVO.name}
                        </div>
                        <div class="text-md setting hide-on-mobile">
                            <img alt="프로필 관리" class="icon item-inline" height="11px" src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/traveler/reservation/ic_setting@2x-832c08d9d38f208502f94e8d35e78a320024fc5f61630f2eba7801845e1eda78.png" width="11px">
                            <a href="/traveler/account">프로필 관리</a>
                        </div>
                    </div>
                    <div class="promotion-container box clearfix">                        
                        <div class="item">
	                        <div class="item-count text-md">
	                            <form action="userMypageReview" method="post">
							          <div class="item-header text-md">
							           		<button type="submit" class="mypageBtn">내가 쓴 리뷰</button>		            
							          </div>
						        </form>
						    </div>
                        </div>
                        <div class="item">
                            <div class="item-count text-md">
                                <form action="userMypageHeart" method="post">
							          <div class="item-header text-md">
							           		<button type="submit" class="mypageBtn">찜 목록</button>		            
							          </div>
						        </form>
                            </div>
                        </div>
                        <div class="item">
                            <div class="item-count text-md">
						        <form action="userMypageDelete" method="post">
							          <div class="item-header text-md">
							           		<button type="submit" class="mypageBtn">회원탈퇴</button>		            
							          </div>
						        </form>
					      	</div>
                        </div>
                    </div>
                    
                    </div>
                    
                </div>
                
                <div class="traveler-body">
                    <main class="member-box box mode-readonly clearfix" id="member">
                        <div class="member-container with-edit-btn">
                            <a class="btn-new btn--type-outline btn--size-xs btn-modify" href="/traveler/account/auth" id="account-modify"></a>
                            <div class="content-wrapper">
                                <div class="profile-img-container hide-on-tablet">
                                    <img class="img profile-img" width="98px" src="//d2yoing0loi5gh.cloudfront.net/assets/default/user_profile_image-414acc60b27f0a258bec14c82b70dc361fc6768da9289f924f887bec1fc33849.png" alt="User profile image">
                                    <form class="profile-uploader" action="/traveler/upload-profile-image" accept-charset="UTF-8" data-remote="true" method="post"><input name="utf8" type="hidden" value="✓"><input type="hidden" name="_method" value="put">
                                        <div class="camera-icon ladda-button" data-spinner-color="#616161" data-style="slide-up"><span class="ladda-label">
                                            <img width="26px" class="ladda-button" data-style="expand-right" src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/traveler/account/ic-camera-copy@2x-ccea255702b3a0ad377893a5c5094e97f81c1518938c5fe0e3b144af9f6d3d92.png" alt="Ic camera copy@2x">
                                        </span><span class="ladda-spinner"></span></div>
                                    </form>
                                    <div class="text">${sessionScope.userVO.name}</div>
                                </div>
     
                                <div class="member-wrapper">
                                    <form id="updateForm"  action="userMypageUpdate"  method="post" >
                                        	<div class="form-group form-input-group">
                                            	<div class="title text-middle">이름</div>
                                           	 	<div class="input-wrapper text-middle">
                                                	<input type="text" class="form-input" value='${sessionScope.userVO.name}' name="name">
                                            	</div>
                                            	<div class="input-wrapper text-middle">
                                                	<div class="row">
                                                    	<div class="col-xs-12">                                                        	
                                                        	<small class="help-block" data-fv-validator="notEmpty" data-fv-for="user[username]" data-fv-result="NOT_VALIDATED" style="display: none;">멋진 이름이 있으시잖아요.</small><small class="help-block" data-fv-validator="stringLength" data-fv-for="user[username]" data-fv-result="NOT_VALIDATED" style="display: none;">이름은 두 글자 이상 입력해주세요.</small></div>
                                                    	</div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="title text-middle">이메일</div>
                                                <div class="input-wrapper text-middle">
                                                    <input class="form-input"  value="${sessionScope.userVO.email1}" name="email1">@
                                                    <select class="form-input" name="email2">
                                                        <option ${sessionScope.userVO.email2 == '@naver.com' ? 'selected' : ''}>naver.com</option>
                                                        <option ${sessionScope.userVO.email2 == '@gmail.com' ? 'selected' : ''}>gmail.com</option>
                                                        <option ${sessionScope.userVO.email2 == '@daum.net' ? 'selected' : '' }>daum.net</option>
                                                        <option ${sessionScope.userVO.email2 == '@nate.com' ? 'selected' : '' }>nate.com</option>
                                                    </select>
                                                </div>                                                
											    
											    <div class="label-verified hide-on-editable">
											
											    </div>
										    </div>
										    <div class="form-group">
										      	<div class="title text-middle">연락처</div>
										      	<div class="input-wrapper text-middle">
												    <select class="form-input" name="phone1">
												        <option>010</option>
												        <option>011</option>
												        <option>017</option>
												        <option>018</option>
												    </select>
										    		<input class="form-input" value="${sessionScope.userVO.phone2}" name="phone2">
										    		<span id="msgPhone"></span>
										
										      	</div>										      
										      
										    </div>										
										      
										    <div class="form-group">
										        <div class="title text-middle">비밀번호</div>
										        <div class="input-wrapper hide-on-editable text-middle">
										            <input class="form-input" type="password" name="pw" id="pw">
										            <span id="msgPw"></span>										            
										        </div>
										        
										        <div class="input-wrapper show-on-editable">
										       
										        </div>
										    </div>
										    <div class="form-group">
										        <div class="title text-middle">비밀번호 확인</div>
										        <div class="input-wrapper hide-on-edita gble text-middle">
										            <input class="form-input" type="password" name="pwCheck" id="pwCheck">
										            <span id="msgPw-c"></span>
										        </div> 									        
										    </div>
										    
										    <div class="form-group">
					                        	<label>* 당신의 가족은 누구인가요?</label>
					                        	<select id="petTag" class="form-input" name="petTag">
					                        		<option ${sessionScope.userVO.petTag == '없음' ? 'selected' : ''}>없음</option>
					                        		<option ${sessionScope.userVO.petTag == '강아지' ? 'selected' : ''}>강아지</option>
					                        		<option ${sessionScope.userVO.petTag == '고양이' ? 'selected' : ''}>고양이</option>
					                        		<option ${sessionScope.userVO.petTag == '강아지+고양이' ? 'selected' : ''}>강아지+고양이</option>
					                        		<option ${sessionScope.userVO.petTag == '기타' ? 'selected' : ''}>기타</option>
					                        	</select>
					                        </div>
										    
										    <div class="form-group">
					                        	<label>비밀번호 찾기</label>
					                        	<select id="quiz" class="form-input" name="quiz" name="quiz" >
					                        		<option ${sessionScope.userVO.quiz == '나의 출신 초등학교는?' ? 'selected' : ''}>나의 출신 초등학교는?</option>
					                        		<option ${sessionScope.userVO.quiz == '나의 아버지 성함은?' ? 'selected' : ''} >나의 아버지 성함은?</option>
					                        		<option ${sessionScope.userVO.quiz == '가장 좋아하는 음식은?' ? 'selected' : ''}>가장 좋아하는 음식은?</option>
					                        		<option ${sessionScope.userVO.quiz == '내 첫사랑의 이름은?' ? 'selected' : ''}>내 첫사랑의 이름은?</option>
					                        	</select>
					                        </div>
										    
										    <div class="form-group">
										        <div class="title text-middle">답변</div>
										        <div class="input-wrapper hide-on-edita gble text-middle">
										            <input class="form-input" type="text" name="answer" id="answer" value="${sessionScope.userVO.answer}">										            
										        </div> 									        
										    </div>
										    
										    
										        
											<div class="form-group form-subscription-group">
										  
											  <div class="form-group">
												    <div class="title text-middle">우편번호</div>
												    <div class="input-wrapper hide-on-editable text-middle">
												        <input class="form-input" value="${sessionScope.userVO.zipNum}" name="zipNum" id="zipNum" readonly>
												        <button class="btn btn-primary" type="button" onclick="goPopup()">주소찾기</button>
												    </div>
												    <div class="input-wrapper show-on-editable">
												   
												    </div>
											   </div>
											   <div class="form-group">
												      <div class="title text-middle">기본주소</div>
												      <div class="input-wrapper hide-on-editable text-middle">
												        <input class="form-input" value="${sessionScope.userVO.basicAdd}" name="basicAdd" id="basicAdd">
												      </div>
												      <div class="input-wrapper show-on-editable">
												     
												      </div>
											   </div>
											      <div class="form-group">
												        <div class="title text-middle">상세주소</div>
												        <div class="input-wrapper hide-on-editable text-middle">
												            <input class="form-input" value="${sessionScope.userVO.detailAdd}" name="detailAdd" id="detailAdd">
												        </div>
												        <div class="input-wrapper show-on-editable">
												       
												        </div>
											      </div>
											
											    <input type="hidden" value="${sessionScope.userVO.id}" name="id">
											</div>									
										
											<div class="form-btn-wrap">
											    <div class="form-btn-container clearfix">
											      <div class="btn--width-50">
											      	<button class="btn-new btn--type-gray btn--width-100 btn--size-sm" onclick="javascript:location.reload();return false;">취소하기</button>
											      </div>
											      <div class="btn--width-50">
											      	<button class="btn-new btn--type-primary btn--width-100 btn--size-sm" id="userUpdate" name="update" type="button">저장하기</button>
											      </div>
											    </div>
											</div>
      									</form>
									</div>
      
	      						</div>
	      		</div>
	     	 </main>
	      </div>
	
	
	
	  </div>
	</main>
</div>  
 
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
  var pwConfirm = document.getElementsByName("pwCheck");
  pwConfirm.onkeyup = function() {
      var regex = /^[A-Za-z0-9+]{8,16}$/;
      if(document.getElementById("pwCheck").value == document.getElementsByName("pw").value ) {
          document.getElementById("pwCheck").style.borderColor = "green";
          document.getElementById("msgPw-c").innerHTML = "비밀번호가 일치합니다";
      } else {
          document.getElementById("pwCheck").style.borderColor = "red";
          document.getElementById("msgPw-c").innerHTML = "비밀번호 확인란을 확인하세요";
      }
  }  
  
  /*회원정보 수정*/
  $("#userUpdate").click(function(){
  	
  	if($("#pw").val() ==''||$("#pw").val() != $("#pwCheck").val() ){
  		alert("비밀번호 규칙을 확인하세요");
  		$("#pw").focus();
  		return;
  	}else if($("#answer").val()==''){
		alert("질문 및 답변은 필수입니다.");
		$("#answer").focus();
		return;
	}else if($("#name").val()==''){
		alert("이름은 필수입니다.");
		$("#name").focus();
		return;
	}else if($("#phone2").val()==''){
		alert("연락처 입력은 필수입니다.");
		$("#phone2").focus();
		return;
	}else{
  		$("#updateForm").submit();	// 전송
  	}
  })
  
  /* 연락처 검사 스크립트 */
        var phone2 = document.getElementById("phone2");
        phone2.onkeyup = function(){
            var regex = /^[0-9+]{8}$/;
             if(regex.test(document.getElementById("phone2").value )) {
                document.getElementById("phone2").style.borderColor = "green";
                document.getElementById("msgPhone").innerHTML = "";
            } else {
                document.getElementById("phone2").style.borderColor = "red";
                document.getElementById("msgPhone").innerHTML = "숫자 8자리 입력해주세요";
            }
        }
	
  </script>
   
  
  
 
