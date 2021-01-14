<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
	<section>
		<div class="container">
			<div class="row">
				
				<div class="col-xs-12 col-sm-12 col-md-12 section-inner">
					<h4>리뷰 작성</h4>
					<!-- 파일 업로드 폼입니다 -->
					<div class="fileDiv">
						<img id="fileImg" src="../resources/img/img_ready.png">
					</div>
					<div class="reply-content">
						<textarea class="form-control" rows="3" name="content"
						id="content" placeholder="무슨 생각을 하고 계신가요?"></textarea>
						
						<div class="reply-group">
							<div class="filebox pull-left">
								<label for="file">이미지업로드</label> 
                            
                                <input type="file" name="file" id="file">
                                
                               
                                
                            </div>
                            
                            
							<button type="button" class="right btn btn-info" id="uploadBtn">등록하기</button>
						</div>
					</div>
				</div>
				
				
				
			</div>
		</div>
	</section>






    <script>


		//자바 스크립트 파일 미리보기 기능
		function readURL(input) {
        	if (input.files && input.files[0]) {
        		
            	var reader = new FileReader(); //비동기처리를 위한 파읽을 읽는 자바스크립트 객체
            	//readAsDataURL 메서드는 컨텐츠를 특정 Blob 이나 File에서 읽어 오는 역할 (MDN참조)
	        	reader.readAsDataURL(input.files[0]); 
            	//파일업로드시 화면에 숨겨져있는 클래스fileDiv를 보이게한다
	            $(".fileDiv").css("display", "block");
            	
            	reader.onload = function(event) { //읽기 동작이 성공적으로 완료 되었을 때 실행되는 익명함수
                	$('#fileImg').attr("src", event.target.result); 
                	console.log(event.target)//event.target은 이벤트로 선택된 요소를 의미
	        	}
        	}
	    }
		$("#file").change(function() {
	        readURL(this); //this는 #file자신 태그를 의미
	    });
		
		
		
		
		
		
	</script>