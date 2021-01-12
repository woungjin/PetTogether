<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	  <header class="my-header">
        <nav class="navbar">
          <div class="container-fluid">
            
            <div class="logo">
              <img src="${pageContext.request.contextPath }/resources/img/petLogo.svg" alt="펫투게더">
              <div class="nav_right">
                <li><a href="/contact/">LOGIN</a></li> <br/>
                  <div class="bar">
                    ㅡ
                  </div>
                <li><a href="/contact/">JOIN</a></li>
                
              </div>
            </div>
            
            <div class="navbar-header">
              <!-- 휴대폰사이즈로 줄었을 때 버튼나오는 기능 -->
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <!-- 로고 영역! -->
 
            </div>
  
            <!-- 메뉴작성 부분 -->
            
            <div class="collapse navbar-collapse" id="myNavbar">
              <ul class="nav">
                <li><a href="/about/">HOME</a></li>
                <li><a href="/about/">CATEGORY</a></li>
                <li><a href="/work/">MAP</a></li>
                <li><a href="/clients/">REVIEW</a></li>
                
              </ul>
            </div>

              
                <!-- 우측 메뉴부분(드롭다운 부분) -->
                <!-- <ul class="nav navbar-nav navbar-right">
                  <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">로그인 <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                      <li><a href="#"><span class="glyphicon glyphicon-user"></span> Join</a></li>
                      
                      <li></span><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                    </ul>
                  </ul>  -->
                  
                  <!-- 네이바 폼 영역 -->
                  <!-- navbar-left도 가능함 -->
            </div>
            </div>
          </div>
        </nav>
      </header>