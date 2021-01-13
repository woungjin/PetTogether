<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <header class="my-header">
        <nav class="navbar">
          <div class="container-fluid">
            
            <div class="logo">
              <div class="logo_img">
                <img src="${pageContext.request.contextPath}/resources/img/home/petLogo.svg" alt="펫투게더">
              </div>
              <div class="nav_right">
                <li><a href="/contact/">LOGIN</a></li> <br/>
                  <div class="bar">
                    ㅡ
                  </div>
                <li><a href="/contact/">JOIN</a></li>
              </div>
            </div>
            
            <div class="collapse navbar-collapse" id="topBar">
              <ul class="nav", id="topBar">
                <li><a href="/about/">HOME</a></li>
                <li><a href="/about/">CATEGORY</a></li>
                <li><a href="/work/">MAP</a></li>
                <li><a href="/clients/">REVIEW</a></li>
              </ul>
            </div>
            <div class="navbar-header" >
              <!-- 휴대폰사이즈로 줄었을 때 버튼나오는 기능 -->
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
            </div>
  
            <!-- 메뉴작성 부분 -->
            

          </div>
        </nav>
      </header>


      <script>
        $(document).ready(function() {
          var topBar = $("#topBar").offset();

          $(window).scroll(function(){

            var docScrollY = $(document).scrollTop()
            var barThis = $("#topBar")
            var fixNext = $("#fixNextTag")

            if(docScrollY > 200) {
              barThis.addClass("top_bar_fix")
              fixNext.addClass("pd_top_80");
            } else {
              barThis.removeClass("top_bar_fix");
              fixNext.removeClass("pd_top_80");
            }

          });
        })

      </script>
