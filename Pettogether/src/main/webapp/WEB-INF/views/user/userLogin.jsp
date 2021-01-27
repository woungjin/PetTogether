<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <section>
    <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
    <script>
        // SDK를 초기화 합니다. 사용할 앱의 JavaScript 키를 설정해 주세요.
        Kakao.init('75b9b051f04270d7cc69a7cda755e9d1');

        // SDK 초기화 여부를 판단합니다.
        console.log(Kakao.isInitialized());
    </script>
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
                         	<a id="custom-login-btn" href="javascript:loginWithKakao()">
							  <img
							    src="//k.kakaocdn.net/14/dn/btqCn0WEmI3/nijroPfbpCa4at5EIsjyf0/o.jpg"
							    width="222"
							  />
							</a>							
	                    	<button type="button" class="btn btn-info" onclick="location.href='userFindId'">아이디 찾기</button>
	                    	<button type="button" class="btn btn-info" onclick="location.href='userFindPw'">비밀번호 찾기</button>
	                     </div>
							<p id="token-result"></p>
	                    	                   
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
		
		
		function loginWithKakao() {
			Kakao.Auth.login({
			      success: function(authObj) {
			    	
			    	  Kakao.Auth.setAccessToken(authObj.ACCESS_TOKEN);
			    	 
			    	  /* getInfo() */
			        alert(JSON.stringify(authObj))
			      },
			      fail: function(err) {
			        alert(JSON.stringify(err))
			      },
			    })
		  }
		
		
		function getInfo(){
			Kakao.API.request({
			    url: '/v2/user/me',
			    success: function(response) {
			        console.log(response);
			    },
			    fail: function(error) {
			        console.log(error);
			    }
			});
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
    	
    	
    	
    </script>