<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <section>
    <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>    
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-7 col-xs-10 login-form">
                    <div class="titlebox">
                    
                    </div>
                    <form action="login" method="post" >
                        <div class="form-group"><!--사용자클래스선언-->

                        	<span id="msg"></span>

                            <label for="id">아이디</label>
                            <input type="text" class="form-control" name="id" id="id" placeholder="아이디" value="${userId }">
                         </div>
                         <div class="form-group"><!--사용자클래스선언-->
                            <label for="id">비밀번호</label>
                            <input type="password" class="form-control" name="pw" id="pw" placeholder="비밀번호">
                         </div>
                         <div class="form-group">
                            <button type="submit" class="btn btn-primary btn-block" id="loginBtn">로그인</button>
                            <button type="button" class="btn btn-primary btn-block" onclick="location.href='userJoin'">회원가입</button>
                         </div>                         
                         <div class="form-group" style="text-align: center;">
                         	<a class="kakaoBtn" href="javascript:loginWithKakao()">
							  <img
							    src="${pageContext.request.contextPath }/resources/img/mapBoard/kakao_login.png"
							    width="69px"							    
							  />
							</a>	                    	
	                    	<a class="btn btn-info" onclick="javascript:unlinkApp()">카카오 기존계정 연결해제</a>		
	                    	<button type="button" class="btn btn-info" onclick="location.href='userFindId'">아이디 찾기</button>
	                    	<button type="button" class="btn btn-info" onclick="location.href='userFindPw'">비밀번호 찾기</button>	                    	
	                     </div>	                     
							<p id="token-result"></p>
	                    	                   
                    </form>
                    <form action="kakaoLogin" id="kakaoLogin" method="post" style="display:none;">
                    	<input type="hidden" id="kakaoId" name="id">
                    	<input type="hidden" id="kakaoPw" name="pw">
                    	<input type="hidden" id="kakaoEmail" name="email1">
                    	<input type="hidden" id="kakaoNickName" name="name">
                    </form>
                </div>
            </div>
        </div>
    </section>

    <script>
		
	    var msg = "${login}";
		if(msg != ""){
			alert(msg);
		}
		
		// SDK를 초기화 합니다. 사용할 앱의 JavaScript 키를 설정해 주세요.
        Kakao.init('75b9b051f04270d7cc69a7cda755e9d1');
        // SDK 초기화 여부를 판단합니다.
        console.log(Kakao.isInitialized());
		
		
		function loginWithKakao() {
			Kakao.Auth.login({
			      success: function(authObj) {
			    	
			    	  Kakao.Auth.setAccessToken(authObj.access_token);
			    	 
			    	  getInfo() 
			        
			      },
			      fail: function(err) {
			        alert(JSON.stringify(err))
			      },
			    })
		  }
		
		
		function getInfo(){
            Kakao.API.request({
                url: '/v2/user/me',
                success: function(res) {
                console.log(res)               	
                document.getElementById('kakaoId').value = res.id;
                document.getElementById('kakaoPw').value = res.id;
                document.getElementById('kakaoEmail').value = res.kakao_account.email;
                document.getElementById('kakaoNickName').value = res.properties.nickname;
                document.getElementById('kakaoLogin').submit(); 
                
                },
                fail: function(error) {
                alert(
                    'login success, but failed to request user information: ' +
                    JSON.stringify(error)
                )
                },
            })
        }
		
		function unlinkApp() {
		    Kakao.API.request({
		      url: '/v1/user/unlink',
		      success: function(res) {
		        alert('계정 연결해제가 완료되었습니다.' )
		      },
		      fail: function(err) {
		        alert('계정 연결해제를 실패하였습니다. 관리자에게 문의해주세요.')
		      },
		    })
		  }		
    	
    	
    	
    </script>