<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


    <header class="my-header">
      <div class="header2">
              
        <!-- 로고 -->
        <div class="top">
          <div class="logo_login">
            <a href="${pageContext.request.contextPath }"><img class="logo" src="${pageContext.request.contextPath }/resources/img/home/petLogo.svg" alt="펫투게더"></a>
              
              <a href="${pageContext.request.contextPath}/user/userLogin">LOGIN </a> 
              <span> | </span>
              <a href="${pageContext.request.contextPath }/user/userJoin"> JOIN</a>
              
            </div>
        </div>

        <!-- 메뉴바  -->
        <div class="mid" id="midBar">
          <ul class="nav">
            <li><a href="${pageContext.request.contextPath }">HOME</a></li>
            <li><a href="${pageContext.request.contextPath }/starBoard/freeList">CATEGORY</a></li>
            <li><a href="${paegContext.request.contextPath }/mapBoard/map">MAP</a></li>
            <li><a href="${pageContext.request.contextPath }/freeBoard/freeReview">REVIEW</a></li>
          </ul>
        </div>
    </div>
  </header>


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

  </script>
