<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<section>
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-7 col-xs-10 login-form">
                    <div class="titlebox">
                    
                    </div>
                    <form action="updatePw" method="post" >
                        
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
                         
                         <input type="hidden" value="${userId}" name="id">
                         
                         <div class="form-group">
                            <button type="submit" class="btn btn-info btn-block" id="updateBtn">확인</button>
                  
                         </div>
	                    	                             
                    </form>
                </div>
            </div>
        </div>
    </section>
    
    <script>
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
    
    <script>
	    var msg = "${msg}";
		if(msg != ""){
			alert(msg);
		}
    </script>