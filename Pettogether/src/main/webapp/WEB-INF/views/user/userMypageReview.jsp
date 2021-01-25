<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 회원정보 -->
<main class="traveler">
	<div class="traveler-container clearfix">
		<div class="sidebar-heading">내가 작성한 리뷰</div>
		<div class="detail-page-xs-hidden traveler-sidebar">
			<div class="sidebar-wrapper">
				<div class="profile-container box">
					<div class="profile">
						<img alt="여행자 사진" class="img-circle"
							src="https://d2ur7st6jjikze.cloudfront.net/profile_images/3524305/3524305_medium_1610952381.png?1610952381"
							width="80">
					</div>
					<div class="username">${sessionScope.userVO.name }</div>
					<div class="text-md setting hide-on-mobile">
						<img alt="프로필 관리" class="icon item-inline" height="11px"
							src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/traveler/reservation/ic_setting@2x-832c08d9d38f208502f94e8d35e78a320024fc5f61630f2eba7801845e1eda78.png"
							width="11px"> <a href="/traveler/account">프로필 관리</a>
					</div>
				</div>
				<div class="promotion-container box clearfix">
					<div class="item">
	                        <div class="item-count text-md">
	                            <form action="userMypageModify" method="post">
							          <div class="item-header text-md">
							           		<button type="submit" class="mypageBtn">회원정보수정</button>		            
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

		</div>
		<div class="traveler-body">
			<div class="my-point-box box clearfix">
				
				<div class="innerbox gray-inner">
					<div class="item text-md">30일 이내 소멸예정 포인트</div>
					<div class="item text-lg font-bold">0원</div>
				</div>
			</div>
			<div class="notice-container">
				<div class="text">
					• 적립된 포인트는 상품 구매 시 현금처럼 사용할 수 있습니다.<br>• 단, 마이리얼트립 내 항공권 구매 또는
					호텔 예약 시에는 사용하실 수 없습니다.<br>• 포인트는 발급 형태에 따라 유효기간이 다르며, 유효기간이
					만료된 캐시는 만료일 자정에 자동 소멸됩니다.<br>• 지급 받으신 포인트는 본인만 사용가능하며 타인에게 양도할
					수 없습니다.<br>
				</div>
			</div>

		</div>
	</div>
</main>

</div>

