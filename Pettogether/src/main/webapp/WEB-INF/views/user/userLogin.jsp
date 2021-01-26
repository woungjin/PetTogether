<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <section>
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
	                    	<button type="button" class="btn btn-info" onclick="location.href='userFindId'">아이디 찾기</button>
	                    	<button type="button" class="btn btn-info" onclick="location.href='userFindPw'">비밀번호 찾기</button>
	                    	                   
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
    	
    	<%-- 
    	$("#loginBtn").click(function(){
    		
    		var id = $("#userId").val();
    		var pw = $("#userPw").val();
    		
    		if( id == '' || pw == '' ){
        		alert("아이디와 비밀번호를 입력하세요.")
        		return;
        	}else{
        		$.ajax({
        			type: "POST",
        			url: "userLogin",
        			data: JSON.stringify({"userId": id,"userPw":pw}),
        			contentType: "application/json; charset=utf-8",
        			success:function(data){
        				if(data == 1){
        					alert("로그인 성공입니다.");
        					location.href="userMypage";
        				}else{
        					alert("로그인 실패.아이디와 비밀번호를 확인하세요")
        					$("#userName").focus();
        					return;
        				}
        			},
        			error: function(status,error){
        				
        			}
        		})
        	}
    		
    	})
    		--%>
    	
    	
    </script>