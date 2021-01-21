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
                            이진웅
                        </div>
                        <div class="text-md setting hide-on-mobile">
                            <img alt="프로필 관리" class="icon item-inline" height="11px" src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/traveler/reservation/ic_setting@2x-832c08d9d38f208502f94e8d35e78a320024fc5f61630f2eba7801845e1eda78.png" width="11px">
                            <a href="/traveler/account">프로필 관리</a>
                        </div>
                    </div>
                    <div class="promotion-container box clearfix">
                        <div class="item">
                            <div class="item-count text-md">
                                <a href="/traveler/coupons?status=enable">
                                    <div class="item-header text-md">
                                        회원 정보 수정
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="item-count text-md">
                                <a href="/traveler/points">
                                    <div class="item-header text-md">내가 쓴 리뷰</div>
                                </a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="item-count text-md">
                                <a href="/traveler/coupons?status=enable">
                                    <div class="item-header text-md">
                                        찜 목록
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="item-count text-md">
                                <a href="/traveler/coupons?status=enable">
                                    <div class="item-header text-md">
                                        회원탈퇴
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <a href="/invite_friends">
                        <div class="box invite-friends-container">
                            <!-- <img alt="intive_friends" height="24px" src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/invite_friends/ic_wishlistbox@2x-80048ea84a241b58b254fdfeb18c9cc87eb8417f43f9e0628fb0454881b25be4.png" width="24px">
                            </a>
                            <div class="text"><span>친구 초대하고</span><span class="accent">&nbsp;2,000포인트&nbsp;</span><span>받기!</span></div> -->
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
                                    
                                    <div class="text">이진웅</div>
                                </div>
     
                                <div class="member-wrapper">
                                    <form id="account-edit-form" data-validation="true" action="/traveler/account" accept-charset="UTF-8" method="post" novalidate="novalidate" class="fv-form fv-form-bootstrap"><button type="submit" class="fv-hidden-submit" style="display: none;width: 0px;height: 0px;"></button><input name="utf8" type="hidden" value="✓"><input type="hidden" name="_method" value="put"><input type="hidden" name="authenticity_token" value="bVCA1jNJRizRMP2x7RIMX5S72JxT/YutHaDsN+x23bsw9QppPCcZJPMPv5Gqa5utRUXVvtR12TMwhHR2tZgYSg==">
                                        <div class="form-group form-input-group">
                                            <div class="title text-middle">이름</div>
                                            <div class="input-wrapper text-middle">
                                                <input type="text" class="form-input" value="${userInfo.userName}" name="name">
                                            </div>
                                            <div class="input-wrapper text-middle">
                                                <div class="row">
                                                    <div class="col-xs-12">
                                                        <!-- <input class="form-control text-content" name="user[username]" readonly="" type="text" value="이진웅" data-fv-field="user[username]"> -->
                                                        <small class="help-block" data-fv-validator="notEmpty" data-fv-for="user[username]" data-fv-result="NOT_VALIDATED" style="display: none;">멋진 이름이 있으시잖아요.</small><small class="help-block" data-fv-validator="stringLength" data-fv-for="user[username]" data-fv-result="NOT_VALIDATED" style="display: none;">이름은 두 글자 이상 입력해주세요.</small></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="title text-middle">이메일</div>
                                                <div class="input-wrapper text-middle">
                                                    <input class="form-input" value="${userInfo.userEmail1 }">@
                                                    <select class="form-input">
                                                        <option ${userInfo.userEmail2 == '@naver.com' ? 'selected' : ''}>naver.com</option>
                                                        <option ${userInfo.userEmail2 == '@gmail.com' ? 'selected' : ''}>gmail.com</option>
                                                        <option ${userInfo.userEmail2 == '@daum.net' ? 'selected' : '' }>daum.net</option>
                                                    </select>
                                                </div>
                                                
      <input type="hidden" value="wou6570@naver.com">
      <div class="label-verified hide-on-editable">

      </div>
      </div>
      <div class="form-group">
      <div class="title text-middle">연락처</div>
      <div class="input-wrapper text-middle">
      +82
      <select class="form-input">
        <option>010</option>
        <option>011</option>
        <option>017</option>
        <option>018</option>
    </select>
    <input class="form-input" value="${userInfo.userPhone2 }">
    

      </div>
      
      
      </div>

      
      <div class="form-group">
        <div class="title text-middle">비밀번호</div>
        <div class="input-wrapper hide-on-editable text-middle">
            <input class="form-input" type="password" name="password" value="${userInfo.userName}">
        </div>
        
        <div class="input-wrapper show-on-editable">
       
        </div>
        </div>
              <div class="form-group">
        <div class="title text-middle">비밀번호 확인</div>
        <div class="input-wrapper hide-on-edita gble text-middle">
            <input class="form-input" type="password" name="passwordCheck" value="">
        </div>
        
        <div class="input-wrapper show-on-editable">
       
        </div>
        </div>
        
<div class="form-group form-subscription-group">
  
  <div class="form-group">
    <div class="title text-middle">우편번호</div>
    <div class="input-wrapper hide-on-editable text-middle">
        <input class="" value="${userInfo.addrZipNum }" readonly>
        <button type="button" class="btn btn-primary" id="addBtn">주소확인</button>
    </div>
    <div class="input-wrapper show-on-editable">
   
    </div>
    </div>
    <div class="form-group">
      <div class="title text-middle">기본주소</div>
      <div class="input-wrapper hide-on-editable text-middle">
        <input class="form-input" value="${userInfo.addrBasic }">
      </div>
      <div class="input-wrapper show-on-editable">
     
      </div>
      </div>
      <div class="form-group">
        <div class="title text-middle">상세주소</div>
        <div class="input-wrapper hide-on-editable text-middle">
            <input class="form-input" value="${userInfo.addrDetail }">
        </div>
        <div class="input-wrapper show-on-editable">
       
        </div>
        </div>
<!--      
    <div class="recent-edit-text show-on-editable">최근 수정일: 2021-01-14</div> -->
    
    
</div>
</div>

<div class="form-btn-wrap">
    <div class="form-btn-container clearfix">
      <div class="btn--width-50">
      <button class="btn-new btn--type-gray btn--width-100 btn--size-sm" onclick="javascript:location.reload();return false;">취소하기</button>
      </div>
      <div class="btn--width-50">
      <button class="btn-new btn--type-primary btn--width-100 btn--size-sm" id="account-submit" name="account-edit" type="submit">저장하기</button>
      </div>
      </div>
      </div>
      </form>
      
      </div>
      </div>
      </div>

      </main>


  </div>
