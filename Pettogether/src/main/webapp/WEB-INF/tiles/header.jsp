<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



    <header class="my-header">
      <div class="header2">
              
        <!-- 로고 -->
        <div class="top">
          <div class="logo_login">
            <a href="${pageContext.request.contextPath }"><img class="logo" src="${pageContext.request.contextPath }/resources/img/home/petLogo.svg" alt="펫투게더"></a>
	          <c:choose>
             <c:when test="${sessionScope.userVO == null }">
              <a href="${pageContext.request.contextPath}/user/userLogin">LOGIN </a> 
              <span> | </span>
              <a href="${pageContext.request.contextPath }/user/userJoin"> JOIN</a>
              </c:when>
              <c:otherwise>
              <a href="${pageContext.request.contextPath }/user/userMypage">MYPAGE</a> 
	          <span>|</span>
	          <a href="${pageContext.request.contextPath }/user/userLogout">LOGOUT</a>
              </c:otherwise>
              </c:choose>
              
            </div>
        </div>

 <!-- 메뉴바  -->
        <div class="mid" id="midBar">
          <ul class="nav">
            <li><a href="${pageContext.request.contextPath }">HOME</a></li>
<<<<<<< HEAD
=======

>>>>>>> master
            <li>
              <div class="dropdown">
              <button class="dropbtn">CATEGORY</button>
              <div class="dropdown-content">
                <a href="${pageContext.request.contextPath }/starBoard/freeList">Link 1</a>
                <a href="${pageContext.request.contextPath }/starBoard/freeList">Link 2</a>
                <a href="${pageContext.request.contextPath }/starBoard/freeList">Link 3</a>
                <a href="${pageContext.request.contextPath }/starBoard/freeList">Link 4</a>
              </div>
              </div>

            </li>
            <li><a href="${pageContext.request.contextPath }/mapBoard/map">MAP</a></li>
<<<<<<< HEAD
=======

>>>>>>> master
            <li><a href="${pageContext.request.contextPath }/freeBoard/freeReview">REVIEW</a></li>
          </ul>
        </div>
    </div>
  </header>

     <!-- 위 아래 버튼 -->
      <!-- <a id="MOVE_TOP_BTN" href="#">TOP</a>
 -->

 <a href="#" id="gotop" style="display:none;position:fixed;bottom:170px;right:20px;z-index:99999999" title="Top">
    <img style="width:30px;"src="${pageContext.request.contextPath }/resources/img/home/TOP_button.png" border="0"/>
</a>

<a href="#gofooter" id="nowfooter" style="display:none;position:fixed;bottom:140px;right:20px;z-index:99999999" title="Bottom">
    <img style="width:30px;" src="${pageContext.request.contextPath }/resources/img/home/BOTTOM_button.png" border="0"/>
</a>


  <script>
      $( document ).ready( function() {
        var jbOffset = $('#midBar').offset();
        $( window ).scroll( function() {
          if ( $( document ).scrollTop() > jbOffset.top ) {
            $( '#midBar' ).addClass( 'jbFixed' );
          }
          else {
            $( '#midBar' ).removeClass( 'jbFixed' );
          }
        });
      });
      
      
      // 위 아래 버튼 
      $(function(){
      $("#gotop").hide();
      $(window).scroll(function(){
          if($(this).scrollTop() > 100){$("#gotop").fadeIn();}
          else{$("#gotop").fadeOut();}
      });
      });


              $(function(){
      $("#nowfooter").hide();
      $(window).scroll(function(){
              var scrollBottom = $(document).height() - $(window).height() - $(window).scrollTop();
          if(scrollBottom > 100){$("#nowfooter").fadeIn();}
          else{$("#nowfooter").fadeOut();}
      });
      });

  </script>
