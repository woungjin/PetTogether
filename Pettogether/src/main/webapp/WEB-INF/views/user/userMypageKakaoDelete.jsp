<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 회원정보 -->
<div class="mypage">

	<main class="traveler">
		<div class="traveler-container clearfix">
			<div class="sidebar-heading">프로필 관리</div>
			<div class="traveler-sidebar">
				<div class="sidebar-wrapper">
					<div class="profile-container box">
						<div class="profile">
							<img alt="여행자 사진" class="img-circle"
								src="//d2yoing0loi5gh.cloudfront.net/assets/default/user_profile_image-414acc60b27f0a258bec14c82b70dc361fc6768da9289f924f887bec1fc33849.png"
								width="80">
						</div>
						<div class="username">${userVO.name }</div>
						<div class="text-md setting hide-on-mobile">
							<img alt="프로필 관리" class="icon item-inline" height="11px"
								src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/traveler/reservation/ic_setting@2x-832c08d9d38f208502f94e8d35e78a320024fc5f61630f2eba7801845e1eda78.png"
								width="11px"> 
						</div>
					</div>
					
					<div class="promotion-container box clearfix">
						<div class="item">
							<div class="item-count text-md">
								<form action="userMypageModify" method="post">
									<div class="item-header text-md">
										<button class="mypageBtn" type="submit">회원정보수정</button>
									</div>
								</form>
							</div>
						</div>
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
                                    <form id="deleteForm"  action="Delete"  method="post" > 
                                    		<div style="text-align: center;"><p>'계정 탈퇴하기' 를 입력해 주세요.</p></div>                                     
										    				
										    <div class="form-group" style="text-align: center;">										        
										        <div class="input-wrapper hide-on-editable text-middle">
										            <input class="form-input" type="password" name="pw" id="pw">										            										            
										        </div>										        
										        
										    </div>										    
										    
											<div class="form-group form-subscription-group">
											    <input type="hidden" value="${sessionScope.userVO.id}" name="id">
											</div>									
										
											<div class="form-btn-wrap">
											    <div class="form-btn-container clearfix">
											      <div class="btn--width-50">
											      	<button class="btn-new btn--type-gray btn--width-100 btn--size-sm" onclick="javascript:location.reload();return false;">취소하기</button>
											      </div>
											      <div class="btn--width-50">
											      	<button class="btn-new btn--type-primary btn--width-100 btn--size-sm" id="userDelete" name="delete" type="button">탈퇴하기</button>
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
<script>

/*비밀번호 확인검사*/
 $("#userDelete").click(function(){
  	console.log($("#pw").val())
  	if($("#pw").val() == '계정 탈퇴하기'){
  		$("#deleteForm").submit();  		
  	}else{
  		alert("정확히 입력해주세요.");
  		$("#pw").focus();
  		return;
  	}
  })
</script>
