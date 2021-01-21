<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
	<section>
		<div class="container">
			<div class="row">
				
				<div class="col-xs-12 col-sm-12 col-md-12 section-inner">
					<h4>리뷰 작성</h4>
					<!-- 파일 업로드 폼입니다 -->
					<div class="fileDiv">
						<img id="fileImg" >
					</div>
					<div class="reply-content">
						<textarea class="form-control" rows="3" name="content"
						id="content" placeholder="무슨 생각을 하고 계신가요?" style="resize : none;"></textarea>
						
						<div class="reply-group">
							<div class="filebox pull-left">
								<label for="file" style="display: inline-block;
													padding: 6px 10px;
													color: #fff;
													font-size: inherit;
													line-height: normal;
													vertical-align: middle;
													background-color: #5cb85c;
													cursor: pointer;
													border: 1px solid #4cae4c;
													border-radius: none;
													-webkit-transition: background-color 0.2s;
													transition: background-color 0.2s;" >이미지업로드</label> 
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
	$(document).ready(function() {
		/*이곳은 파일을 업로드하는 움직임입니다*/
		$("#uploadBtn").click(reviewRegist);
		
		function reviewRegist() {
			var writer = "test"/*"${sessionScope.userVO.userId}"*/;
			var file = $("#file").val();
			var content = $("#content").val();
			
			if(writer === "" | content === ""){
				alert("공백을 주의해주세요 ^_^");
			}
			
			//파일확장자를 체크합니다 
			file = file.substring(file.lastIndexOf(".") , file.length).toLowerCase();
			console.log(file);
			
			if(file != ".png" && file != ".jpg" && file != "jpeg"){
				alert("이미지 형식의 파일을 선택해주세요 !");
				return; 
			}else if (writer == null) {
				alert("로그인이 필요합니다");
			}
			
			var data = $("#file");
			console.log(data);
			console.log(data[0]);
			console.log(data[0].files); // 파일 태그에 담긴 파일을 확인하는 키값
			console.log(data[0].files[0]);// 전송해야하는 파일데이터정보
	
			var formData = new FormData();
			formData.append("file", data[0].files[0]);	
			formData.append("content" , content);	
			
			$.ajax({
				type : "POST",
				url : "reviewUpload",
				processData : false , 
				contentType : false ,
				data : formData ,
				success : function(result) {
					$("#file").val(""); // 파일데이터 초기화
					$("#content").val(""); // content초기화
					$(".fileDiv").css("display" , "none"); //미리보기 숨기기
					alert(result);
					
					location.href="freeReview";
					
				},
				error : function(error) {
					alert("실패하였습니다");	
				}
				
			})
			
			
			
			
			
			
			
			
		}; // reviewRegist() 종효
		
	});// document ready 함수 종료
		
		
		
		
	</script>




    <script>
	
	
		//자바 스크립트 파일 미리보기 기능=======================================================
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
// ===============================================================		
		
		
		
		
		
	</script>