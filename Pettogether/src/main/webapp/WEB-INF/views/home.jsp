<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  <section class="home-banner">
      <div id="wrapper">
        <div id="slider-wrap">
            <ul id="slider">
               <li>
                  <div>
                      <h3>Slide #1</h3>
                      <span>Sub-title #1</span>
                  </div>                
  <img src="${pageContext.request.contextPath }/resources/img/home/petLogo.svg">
               </li>
               
               <li>
                  <div>
                      <h3>Slide #2</h3>
                      <span>Sub-title #2</span>
                  </div>
  <img src="${pageContext.request.contextPath }/resources/img/home/petLogo.svg">
               </li>
               
               <li>
                  <div>
                      <h3>Slide #3</h3>
                      <span>Sub-title #3</span>
                  </div>
  <img src="${pageContext.request.contextPath }/resources/img/home/petLogo.svg">
               </li>
               
               <li>
                  <div>
                      <h3>Slide #4</h3>
                      <span>Sub-title #4</span>
                  </div>
  <img src="${pageContext.request.contextPath }/resources/img/home/petLogo.svg">
               </li>
               
               <!-- <li>
                  <div>
                      <h3>Slide #5</h3>
                      <span>Sub-title #5</span>
                  </div>
  <img src="https://fakeimg.pl/350x200/0064CD/000?text=55555">
               </li> -->
               
               
            </ul>
            
             <!--controls-->
            <div class="btns" id="next"><i class="fa fa-arrow-right"></i></div>
            <div class="btns" id="previous"><i class="fa fa-arrow-left"></i></div>
            <div id="counter"></div>
            
            <div id="pagination-wrap">
              <ul>
              </ul>
            </div>
            <!--controls-->  
                   
        </div>

     </div>
    </section>

    <div class="text">
        <p>혼자있는 당신을 위한 반려동물 동반여행 플랫폼</p>
        <h4>주인을 데려가세요~!, <strong>펫투게더<span>!</span></strong></h4>
    </div>

    <div class="tit">
        <h1>이렇게 좋은 곳을 안가보셨다구요? </h1>
        <h2>당신의 동물과 함께하세요<span class="italic">!</span>&nbsp;</h2>
    </div>


    
    <section class="home-tag">
    <div class=".sec_where">
        <div class="where_menu w_cont">
            <div class="swiper-container swiper-container-initialized swiper-container-horizontal">
                <div class="swiper-wrapper" style="transform: translate3d(0px, 0px, 0px); transition-duration: 0ms;">
                    
                    <div class="swiper-slide swiper-slide-active">
                        <h4><a href="">  <img src="${pageContext.request.contextPath }/resources/img/home/where_icon1.png"></a></h4>
                        <p>여행지</p>
                    </div>
                    <div class="swiper-slide swiper-slide-next">
                        <h4><a href="">  <img src="${pageContext.request.contextPath }/resources/img/home/where_icon2.png"></a></h4>
                        <p>애견(동반)카페</p>
                    </div>
                    <div class="swiper-slide">
                        <h4><a href="">  <img src="${pageContext.request.contextPath }/resources/img/home/where_icon3.png"></a></h4>
                        <p>애견펜션</p>
                    </div>
                    <div class="swiper-slide">
                        <h4><a href="">  <img src="${pageContext.request.contextPath }/resources/img/home/where_icon5.png"></a></h4>
                        <p>애견호텔</p>
                    </div>
                </div>
        </div>


        <!-- 마이리얼트립 가져옴 -->
        <section class="MainHeader-module__container--LCI8z">
            <div class="Grid-module__container--1Vs_H">
                <div class="Grid-module__row--338xw Grid-module__full--1lfUT MainCitiesVideos-module__container--15IoM">
                    <div class="Carousel-module__container--n92SI">
                        <div class="swiper-container swiper-container-horizontal">
                            <div class="swiper-wrapper" style="transform: translate3d(0px, 0px, 0px);">
                                <div class="MainCityVideo-module__container--3bdht swiper-slide swiper-slide-active" style="width: 270px;">
                                    


                                    <!-- 여행 -->
                                    <a href="1">
                                    <img src="https://d2ur7st6jjikze.cloudfront.net/landscapes/4737_xlarge_square_1535949304.jpg?1535949304" alt="https://d2ur7st6jjikze.cloudfront.net/landscapes/4737_xlarge_square_1535949304.jpg?1535949304" class="MainCityVideo-module__imageZoomOutAnimation--1VyM4 ResponsiveImage-module__image--35A4X ResponsiveImage-module__targetHeight--23NtX">
                                    <div class="MainCityVideo-module__gradientBackground--1dzKK"
                                    ></div>
                                    <div class="MainCityVideo-module__header--_YDeH">
                                        <div class="MainCityVideo-module__titleWrapper--2CvMR">
                                            <span class="MainCityVideo-module__title--15eaK">여행</span>
                                        </div>

                                    </div>
                                </a>
                                </div>

                                <!-- 카페  -->
                                <a href="2">
                                <div class="MainCityVideo-module__container--3bdht swiper-slide swiper-slide-next" style="width: 270px;">
                                    <img src="https://d2ur7st6jjikze.cloudfront.net/landscapes/832_xlarge_square_1493257137.jpg?1493257137" alt="https://d2ur7st6jjikze.cloudfront.net/landscapes/832_xlarge_square_1493257137.jpg?1493257137" class="MainCityVideo-module__imageZoomOutAnimation--1VyM4 ResponsiveImage-module__image--35A4X ResponsiveImage-module__targetHeight--23NtX">
                                    <div class="MainCityVideo-module__gradientBackground--1dzKK">
                                    </div>
                                    <div class="MainCityVideo-module__header--_YDeH">
                                        <div class="MainCityVideo-module__titleWrapper--2CvMR">
                                            <span class="MainCityVideo-module__title--15eaK">카페</span>
                                        </div>
                                        
                                    </div>
                                    </div>
                                </a>

                                <!-- 애견펜션 -->
                                <a href="3">
                                <div class="MainCityVideo-module__container--3bdht swiper-slide" style="width: 270px;">
                                    <img src="https://d2ur7st6jjikze.cloudfront.net/landscapes/4744_xlarge_square_1535960572.jpg?1535960572" alt="https://d2ur7st6jjikze.cloudfront.net/landscapes/4744_xlarge_square_1535960572.jpg?1535960572" class="MainCityVideo-module__imageZoomOutAnimation--1VyM4 ResponsiveImage-module__image--35A4X ResponsiveImage-module__targetHeight--23NtX">
                                    <div class="MainCityVideo-module__gradientBackground--1dzKK">
                                    </div>
                                    <div class="MainCityVideo-module__header--_YDeH">
                                        <div class="MainCityVideo-module__titleWrapper--2CvMR">
                                            <span class="MainCityVideo-module__title--15eaK">애견펜션</span>
                                        </div>
                                       
                                    </div>
                                    </div>
                                    </a>
                                    <!-- 애견호텔 -->
                                    <a href="4">
                                    <div class="MainCityVideo-module__container--3bdht swiper-slide" style="width: 270px;">
                                        <img src="https://d2ur7st6jjikze.cloudfront.net/landscapes/599_xlarge_square_1472227370.jpg?1472227370" alt="https://d2ur7st6jjikze.cloudfront.net/landscapes/599_xlarge_square_1472227370.jpg?1472227370" class="MainCityVideo-module__imageZoomOutAnimation--1VyM4 ResponsiveImage-module__image--35A4X ResponsiveImage-module__targetHeight--23NtX">
                                        <div class="MainCityVideo-module__gradientBackground--1dzKK"></div>
                                        <div class="MainCityVideo-module__header--_YDeH">
                                            <div class="MainCityVideo-module__titleWrapper--2CvMR">
                                                <span class="MainCityVideo-module__title--15eaK">애견호텔</span>
                                            </div>
                                          
                                        </div>
                            
                                    </div>
                                </a>

                            </div>
                            
                        </div>
                    </div>
                </div>

                <!-- 최근본 상품 -->
                <div class="MainOfferItem-module__container--sebOM">
                    <div class="MainOfferItem-module__line--oq9RI">

                    </div>
                    <div class="Grid-module__container--1Vs_H">
                        <div class="Grid-module__row--338xw">
                            <header class="SectionHeader-module__container--2hO_V">
                                <div>
                                    <h2 class="SectionHeader-module__title--2JM-O">최근 본 상품</h2>
                                </div>
                            </header>
                        </div>
                    </div>
                    <div class="Grid-module__container--1Vs_H">
                        <div class="Grid-module__row--338xw Grid-module__full--1lfUT">
                            <div class="CardSwiper-module__container--1qr1h CardSwiper-module__common--1XR31">
                                <div class="Carousel-module__container--n92SI"><div class="swiper-container swiper-container-horizontal">
                                    <div class="swiper-wrapper" style="width: 1890px; transform: translate3d(0px, 0px, 0px); transition-duration: 0ms;">
                                     
                                        <a href="https://www.myrealtrip.com/offers/83467" class="CardContainer-module__container--15PwL CardShare-module__container--3ENNV CardContainer-module__offer--MXYO5 CardContainer-module__swiper--2aP0C swiper-slide swiper-slide-next" style="width: 270px;">
                                            <div class="OfferVerticalCard-module__thumbnail--WrSzy">
                                                <div class="CardThumbnail-module__container--1YPw8 CardThumbnail-module__vertical--3Jyvq">
                                                    <div class="LazyImageLoader-module__container--rusqc">
                                                        <img alt="" class="LazyImageLoader-module__image--34Ldw CardThumbnail-module__image--2YicN" data-src="https://d2ur7st6jjikze.cloudfront.net/offer_photos/83467/545513_medium_1605154297.jpg?1605154297" src="https://d2ur7st6jjikze.cloudfront.net/offer_photos/83467/545513_medium_1605154297.jpg?1605154297">
                                                <div class="LazyImageLoader-module__displayImage--2IPLI CardThumbnail-module__image--2YicN LazyImageLoader-module__visible--2ofkT" >
                                        
                                                </div>
                                            </div>
                                        </div>
                                        </div>
                                        <div class="OfferVerticalCard-module__body--2W4EN CardShare-module__body--5Xp8j">
                                        <div class="CardCategory-module__container--26QPo"><div class="CardCategory-module__label--3yWve" style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 1;">여행편의 ・ 제주도</div>
                                        </div>
                                        <h3 class="CardTitle-module__container--IY9rw CardTitle-module__vertical--Ij9WD"><div class="CardTitle-module__title--3oRDQ" style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">[렌터카] 렌터카플랫폼 찜카 25% 할인권_5,10,15,20만원권 (중복이용 가능)</div>
                                        </h3>
                                        <div class="OfferVerticalCard-module__info--307P8"><div class="OfferVerticalCard-module__review--cdVOJ"><div class="CardRating-module__container--3b6dT">
                                        <div class="starRating starRating--m starRating--blue starRating--">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12"><path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z">
                                        
                                            </path>
                                        </svg>
                                        <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12"><path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z">
                                        
                                        </path>
                                        </svg>
                                        <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12"><path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z">
                                        
                                        </path>
                                        </svg>
                                        <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12"><path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z">
                                        
                                        </path>
                                        </svg>
                                        <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12"><path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z">
                                        
                                        </path>
                                        </svg>
                                        </div>
                                        <span class="CardRating-module__review--1L-nw">1,810</span>
                                        </div>
                                        </div>
                                        <div class="CardPriceForVertical-module__container--2-T-b">
                                            <!-- 가격 -->
                                        <!-- <span class="CardPriceForVertical-module__origin--234kx">50,000<span class="CardPriceForVertical-module__unit--2ILoY">원</span>
                                        </span><span class="CardPriceForVertical-module__main--3jiav">37,500<span class="CardPriceForVertical-module__unit--2ILoY">원</span> -->
                                        </span>
                                        <!-- <span class="CardPriceForVertical-module__standard--3-99d"> / 1인</span> -->
                                        </div>
                                        </div>
                                        <div class="OfferVerticalCard-module__immediately--2TVA0">
                                        <!-- <div class="CardInstantBookingSticker-module__container--KypAf CardInstantBookingSticker-module__vertical--3bcwr"><img class="CardInstantBookingSticker-module__icon--2alE6" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI5IiBoZWlnaHQ9IjE2IiB2aWV3Qm94PSIwIDAgOSAxNiI+CiAgICA8cGF0aCBmaWxsPSIjRkZCRjAwIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0yLjk2MyAxNlY5LjIzSDBMNS45MjYgMHY2Ljc3aDIuOTYzeiIvPgo8L3N2Zz4K" alt="즉시확정">
                                        <span class="CardInstantBookingSticker-module__text--1icI9">즉시확정</span>
                                        </div> -->
                                        </div>
                                        </div>
                                        <div class="OfferVerticalCard-module__wishlist--3RAhY">
                                        <img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlPSIjRkZGIiBzdHJva2Utd2lkdGg9IjEuNSIgZD0iTTEyLjEwNSAxOS41ODZsNy4wMTItNy4wMTJhNC41ODMgNC41ODMgMCAxIDAtNi40ODItNi40ODJsLS41My41My0uNTMtLjUzYTQuNTgzIDQuNTgzIDAgMCAwLTYuNDgzIDYuNDgybDcuMDEzIDcuMDEyeiIvPgo8L3N2Zz4K" alt="wishlist" role="button" tabindex="-1">
                                        </div>
                                        </a>   <a href="https://www.myrealtrip.com/offers/83467" class="CardContainer-module__container--15PwL CardShare-module__container--3ENNV CardContainer-module__offer--MXYO5 CardContainer-module__swiper--2aP0C swiper-slide swiper-slide-next" style="width: 270px;">
    <div class="OfferVerticalCard-module__thumbnail--WrSzy">
        <div class="CardThumbnail-module__container--1YPw8 CardThumbnail-module__vertical--3Jyvq">
            <div class="LazyImageLoader-module__container--rusqc">
                <img alt="" class="LazyImageLoader-module__image--34Ldw CardThumbnail-module__image--2YicN" data-src="https://d2ur7st6jjikze.cloudfront.net/offer_photos/83467/545513_medium_1605154297.jpg?1605154297" src="https://d2ur7st6jjikze.cloudfront.net/offer_photos/83467/545513_medium_1605154297.jpg?1605154297">
        <div class="LazyImageLoader-module__displayImage--2IPLI CardThumbnail-module__image--2YicN LazyImageLoader-module__visible--2ofkT"></div><div class="LazyImageLoader-module__placeholder--1ZKk6 CardThumbnail-module__image--2YicN">

        </div>
    </div>
</div>
</div>
<div class="OfferVerticalCard-module__body--2W4EN CardShare-module__body--5Xp8j">
<div class="CardCategory-module__container--26QPo"><div class="CardCategory-module__label--3yWve" style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 1;">여행편의 ・ 제주도</div>
</div>
<h3 class="CardTitle-module__container--IY9rw CardTitle-module__vertical--Ij9WD"><div class="CardTitle-module__title--3oRDQ" style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">[렌터카] 렌터카플랫폼 찜카 25% 할인권_5,10,15,20만원권 (중복이용 가능)</div>
</h3>
<div class="OfferVerticalCard-module__info--307P8"><div class="OfferVerticalCard-module__review--cdVOJ"><div class="CardRating-module__container--3b6dT">
<div class="starRating starRating--m starRating--blue starRating--">
    <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12"><path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z">

    </path>
</svg>
<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12"><path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z">

</path>
</svg>
<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12"><path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z">

</path>
</svg>
<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12"><path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z">

</path>
</svg>
<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12"><path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z">

</path>
</svg>
</div>
<span class="CardRating-module__review--1L-nw">1,810</span>
</div>
</div>
<div class="CardPriceForVertical-module__container--2-T-b">
    <!-- 가격 -->
<!-- <span class="CardPriceForVertical-module__origin--234kx">50,000<span class="CardPriceForVertical-module__unit--2ILoY">원</span>
</span><span class="CardPriceForVertical-module__main--3jiav">37,500<span class="CardPriceForVertical-module__unit--2ILoY">원</span> -->
</span>
<!-- <span class="CardPriceForVertical-module__standard--3-99d"> / 1인</span> -->
</div>
</div>
<div class="OfferVerticalCard-module__immediately--2TVA0">
<!-- <div class="CardInstantBookingSticker-module__container--KypAf CardInstantBookingSticker-module__vertical--3bcwr"><img class="CardInstantBookingSticker-module__icon--2alE6" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI5IiBoZWlnaHQ9IjE2IiB2aWV3Qm94PSIwIDAgOSAxNiI+CiAgICA8cGF0aCBmaWxsPSIjRkZCRjAwIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0yLjk2MyAxNlY5LjIzSDBMNS45MjYgMHY2Ljc3aDIuOTYzeiIvPgo8L3N2Zz4K" alt="즉시확정">
<span class="CardInstantBookingSticker-module__text--1icI9">즉시확정</span>
</div> -->
</div>
</div>
<div class="OfferVerticalCard-module__wishlist--3RAhY">
<img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlPSIjRkZGIiBzdHJva2Utd2lkdGg9IjEuNSIgZD0iTTEyLjEwNSAxOS41ODZsNy4wMTItNy4wMTJhNC41ODMgNC41ODMgMCAxIDAtNi40ODItNi40ODJsLS41My41My0uNTMtLjUzYTQuNTgzIDQuNTgzIDAgMCAwLTYuNDgzIDYuNDgybDcuMDEzIDcuMDEyeiIvPgo8L3N2Zz4K" alt="wishlist" role="button" tabindex="-1">
</div>
</a>
<a href="https://www.myrealtrip.com/offers/14831" class="CardContainer-module__container--15PwL CardShare-module__container--3ENNV CardContainer-module__offer--MXYO5 CardContainer-module__swiper--2aP0C swiper-slide" style="width: 270px;">
    <div class="OfferVerticalCard-module__thumbnail--WrSzy">
        <div class="CardThumbnail-module__container--1YPw8 CardThumbnail-module__vertical--3Jyvq"><div class="LazyImageLoader-module__container--rusqc">
            <img alt="" class="LazyImageLoader-module__image--34Ldw CardThumbnail-module__image--2YicN" data-src="https://d2ur7st6jjikze.cloudfront.net/offer_photos/14831/90902_medium_1525752753.jpg?1525752753" src="https://d2ur7st6jjikze.cloudfront.net/offer_photos/14831/90902_medium_1525752753.jpg?1525752753">
            <div class="LazyImageLoader-module__displayImage--2IPLI CardThumbnail-module__image--2YicN LazyImageLoader-module__visible--2ofkT">
            </div>
            <div class="LazyImageLoader-module__placeholder--1ZKk6 CardThumbnail-module__image--2YicN">

            </div>
        </div>
    </div>
</div>
<div class="OfferVerticalCard-module__body--2W4EN CardShare-module__body--5Xp8j">
    <div class="CardCategory-module__container--26QPo">
        <div class="CardCategory-module__label--3yWve" style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 1;">티켓/패스 ・ 고양</div>
    </div>
    <h3 class="CardTitle-module__container--IY9rw CardTitle-module__vertical--Ij9WD">
        <div class="CardTitle-module__title--3oRDQ" style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">[경기/일산] 아쿠아플라넷 일산 입장권</div>
    </h3>
    <div class="OfferVerticalCard-module__info--307P8">
        <div class="OfferVerticalCard-module__review--cdVOJ">
            <div class="CardRating-module__container--3b6dT">
                <div class="starRating starRating--m starRating--blue starRating--">
                    <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12"><path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z">

                    </path>
                </svg>
                <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12"><path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z">
                    
                </path>
            </svg>
            <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12"><path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z">

            </path>
        </svg>
        <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12">
            <path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z">

            </path>
        </svg>
        <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12">
            <path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z">

            </path>
        </svg>
    </div>
    <span class="CardRating-module__review--1L-nw">167</span>
</div>
</div>
<div class="CardPriceForVertical-module__container--2-T-b">
    <!-- <span class="CardPriceForVertical-module__origin--234kx">29,000<span class="CardPriceForVertical-module__unit--2ILoY">원</span> -->
</span>
    <!-- <span class="CardPriceForVertical-module__main--3jiav">20,000<span class="CardPriceForVertical-module__unit--2ILoY">원</span></span>
    <span class="CardPriceForVertical-module__standard--3-99d"> / 1인</span> -->
</div>
</div>
<div class="OfferVerticalCard-module__immediately--2TVA0">
    <!-- <div class="CardInstantBookingSticker-module__container--KypAf CardInstantBookingSticker-module__vertical--3bcwr">
        <img class="CardInstantBookingSticker-module__icon--2alE6" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI5IiBoZWlnaHQ9IjE2IiB2aWV3Qm94PSIwIDAgOSAxNiI+CiAgICA8cGF0aCBmaWxsPSIjRkZCRjAwIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0yLjk2MyAxNlY5LjIzSDBMNS45MjYgMHY2Ljc3aDIuOTYzeiIvPgo8L3N2Zz4K" alt="즉시확정">
        <span class="CardInstantBookingSticker-module__text--1icI9">즉시확정</span>
    </div> -->
</div>
</div>
<div class="OfferVerticalCard-module__wishlist--3RAhY">
    <img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlPSIjRkZGIiBzdHJva2Utd2lkdGg9IjEuNSIgZD0iTTEyLjEwNSAxOS41ODZsNy4wMTItNy4wMTJhNC41ODMgNC41ODMgMCAxIDAtNi40ODItNi40ODJsLS41My41My0uNTMtLjUzYTQuNTgzIDQuNTgzIDAgMCAwLTYuNDgzIDYuNDgybDcuMDEzIDcuMDEyeiIvPgo8L3N2Zz4K" alt="wishlist" role="button" tabindex="-1">
</div>
</a>
<a href="https://www.myrealtrip.com/offers/81896" class="CardContainer-module__container--15PwL CardShare-module__container--3ENNV CardContainer-module__offer--MXYO5 CardContainer-module__swiper--2aP0C swiper-slide" style="width: 270px;">
    <div class="OfferVerticalCard-module__thumbnail--WrSzy">
        <div class="CardThumbnail-module__container--1YPw8 CardThumbnail-module__vertical--3Jyvq">
            <div class="LazyImageLoader-module__container--rusqc">
                <img alt="" class="LazyImageLoader-module__image--34Ldw CardThumbnail-module__image--2YicN" data-src="https://d2ur7st6jjikze.cloudfront.net/offer_photos/81896/502004_medium_1586325935.jpg?1586325935" src="https://d2ur7st6jjikze.cloudfront.net/offer_photos/81896/502004_medium_1586325935.jpg?1586325935">
                <div class="LazyImageLoader-module__displayImage--2IPLI CardThumbnail-module__image--2YicN LazyImageLoader-module__visible--2ofkT">
                </div>
                <div class="LazyImageLoader-module__placeholder--1ZKk6 CardThumbnail-module__image--2YicN">

                </div>
            </div>
        </div>
    </div>
    <div class="OfferVerticalCard-module__body--2W4EN CardShare-module__body--5Xp8j">
        <div class="CardCategory-module__container--26QPo">
            <div class="CardCategory-module__label--3yWve" style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 1;">티켓/패스 ・ 경기도</div>
        </div>
        <h3 class="CardTitle-module__container--IY9rw CardTitle-module__vertical--Ij9WD">
            <div class="CardTitle-module__title--3oRDQ" style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">[경기 용인] 동백 스포랜드 골프 체험권</div>
        </h3>
        <div class="OfferVerticalCard-module__info--307P8">
            <div class="OfferVerticalCard-module__review--cdVOJ">
                <div class="CardRating-module__container--3b6dT">
                    <div class="starRating starRating--m starRating--blue starRating--">
                        <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12">
                            <path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z"></path>
                        </svg>
                        <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12">
                            <path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z"></path>
                        </svg>
                        <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12">
                            <path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z"></path>
                        </svg>
                        <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12">
                            <path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z"></path>
                        </svg>
                        <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12">
                            <path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z">

                            </path>
                        </svg>
                    </div>
                    <span class="CardRating-module__review--1L-nw">5</span>
                </div>
            </div>
            <div class="CardPriceForVertical-module__container--2-T-b">
                <!-- <span class="CardPriceForVertical-module__main--3jiav">7,900<span class="CardPriceForVertical-module__unit--2ILoY">원</span>
            </span>
            <span class="CardPriceForVertical-module__standard--3-99d"> / 1인</span> -->
        </div>
    </div>
    <div class="OfferVerticalCard-module__immediately--2TVA0">
        <div class="CardInstantBookingSticker-module__container--KypAf CardInstantBookingSticker-module__vertical--3bcwr">
            <!-- <img class="CardInstantBookingSticker-module__icon--2alE6" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI5IiBoZWlnaHQ9IjE2IiB2aWV3Qm94PSIwIDAgOSAxNiI+CiAgICA8cGF0aCBmaWxsPSIjRkZCRjAwIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0yLjk2MyAxNlY5LjIzSDBMNS45MjYgMHY2Ljc3aDIuOTYzeiIvPgo8L3N2Zz4K" alt="즉시확정">
            <span class="CardInstantBookingSticker-module__text--1icI9">즉시확정</span> -->
        </div>
    </div>
</div>
<div class="OfferVerticalCard-module__wishlist--3RAhY">
    <img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlPSIjRkZGIiBzdHJva2Utd2lkdGg9IjEuNSIgZD0iTTEyLjEwNSAxOS41ODZsNy4wMTItNy4wMTJhNC41ODMgNC41ODMgMCAxIDAtNi40ODItNi40ODJsLS41My41My0uNTMtLjUzYTQuNTgzIDQuNTgzIDAgMCAwLTYuNDgzIDYuNDgybDcuMDEzIDcuMDEyeiIvPgo8L3N2Zz4K" alt="wishlist" role="button" tabindex="-1">
</div>
</a>


</div>
<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
</div>

</div>
</div>
</div>
</div>
</div>


<!-- 추천상품 -->
                <!-- 사용자들의 최신리뷰 -->
                <div class="MainOfferItem-module__container--sebOM">
                    <div class="MainOfferItem-module__line--oq9RI">

                    </div>
                    <div class="Grid-module__container--1Vs_H">
                        <div class="Grid-module__row--338xw">
                            <header class="SectionHeader-module__container--2hO_V">
                                <div>
                                    <h2 class="SectionHeader-module__title--2JM-O">사용자들의 최신 리뷰글</h2>
                                </div>
                            </header>
                        </div>
                    </div>
                    <div class="Grid-module__container--1Vs_H">
                        <div class="Grid-module__row--338xw Grid-module__full--1lfUT">
                            <div class="CardSwiper-module__container--1qr1h CardSwiper-module__common--1XR31">
                                <div class="Carousel-module__container--n92SI"><div class="swiper-container swiper-container-horizontal">
                                    <div class="swiper-wrapper" style="width: 1890px; transform: translate3d(0px, 0px, 0px); transition-duration: 0ms;">
                                     
                                <a href="https://www.myrealtrip.com/offers/83467" class="CardContainer-module__container--15PwL CardShare-module__container--3ENNV CardContainer-module__offer--MXYO5 CardContainer-module__swiper--2aP0C swiper-slide swiper-slide-next" style="width: 270px;">
                                    <div class="OfferVerticalCard-module__thumbnail--WrSzy">
                                        <div class="CardThumbnail-module__container--1YPw8 CardThumbnail-module__vertical--3Jyvq">
                                            <div class="LazyImageLoader-module__container--rusqc">
                                                <img alt="" class="LazyImageLoader-module__image--34Ldw CardThumbnail-module__image--2YicN" data-src="https://d2ur7st6jjikze.cloudfront.net/offer_photos/83467/545513_medium_1605154297.jpg?1605154297" src="${pageContext.request.contextPath }/resources/img/home/petLogo.svg">
                                        <div class="LazyImageLoader-module__displayImage--2IPLI CardThumbnail-module__image--2YicN LazyImageLoader-module__visible--2ofkT">

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="OfferVerticalCard-module__body--2W4EN CardShare-module__body--5Xp8j">
                                <div class="CardCategory-module__container--26QPo"><div class="CardCategory-module__label--3yWve" style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 1;">여행편의 ・ 제주도</div>
                            </div>
                            <h3 class="CardTitle-module__container--IY9rw CardTitle-module__vertical--Ij9WD"><div class="CardTitle-module__title--3oRDQ" style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">[렌터카] 렌터카플랫폼 찜카 25% 할인권_5,10,15,20만원권 (중복이용 가능)</div>
                            </h3>
                            <div class="OfferVerticalCard-module__info--307P8"><div class="OfferVerticalCard-module__review--cdVOJ"><div class="CardRating-module__container--3b6dT">
                                <div class="starRating starRating--m starRating--blue starRating--">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12"><path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z">

                                    </path>
                                </svg>
                                <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12"><path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z">

                                </path>
                            </svg>
                            <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12"><path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z">

                            </path>
                        </svg>
                        <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12"><path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z">

                        </path>
                    </svg>
                    <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12"><path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z">

                    </path>
                </svg>
            </div>
            <span class="CardRating-module__review--1L-nw">1,810</span>
        </div>
    </div>
    <div class="CardPriceForVertical-module__container--2-T-b">
        <!-- 가격 -->
        <!-- <span class="CardPriceForVertical-module__origin--234kx">50,000<span class="CardPriceForVertical-module__unit--2ILoY">원</span>
    </span><span class="CardPriceForVertical-module__main--3jiav">37,500<span class="CardPriceForVertical-module__unit--2ILoY">원</span> -->
</span>
<!-- <span class="CardPriceForVertical-module__standard--3-99d"> / 1인</span> -->
</div>
</div>
<div class="OfferVerticalCard-module__immediately--2TVA0">
    <!-- <div class="CardInstantBookingSticker-module__container--KypAf CardInstantBookingSticker-module__vertical--3bcwr"><img class="CardInstantBookingSticker-module__icon--2alE6" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI5IiBoZWlnaHQ9IjE2IiB2aWV3Qm94PSIwIDAgOSAxNiI+CiAgICA8cGF0aCBmaWxsPSIjRkZCRjAwIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0yLjk2MyAxNlY5LjIzSDBMNS45MjYgMHY2Ljc3aDIuOTYzeiIvPgo8L3N2Zz4K" alt="즉시확정">
        <span class="CardInstantBookingSticker-module__text--1icI9">즉시확정</span>
    </div> -->
</div>
</div>
<div class="OfferVerticalCard-module__wishlist--3RAhY">
    <img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlPSIjRkZGIiBzdHJva2Utd2lkdGg9IjEuNSIgZD0iTTEyLjEwNSAxOS41ODZsNy4wMTItNy4wMTJhNC41ODMgNC41ODMgMCAxIDAtNi40ODItNi40ODJsLS41My41My0uNTMtLjUzYTQuNTgzIDQuNTgzIDAgMCAwLTYuNDgzIDYuNDgybDcuMDEzIDcuMDEyeiIvPgo8L3N2Zz4K" alt="wishlist" role="button" tabindex="-1">
</div>
</a>  
 <a href="https://www.myrealtrip.com/offers/83467" class="CardContainer-module__container--15PwL CardShare-module__container--3ENNV CardContainer-module__offer--MXYO5 CardContainer-module__swiper--2aP0C swiper-slide swiper-slide-next" style="width: 270px;">
    <div class="OfferVerticalCard-module__thumbnail--WrSzy">
        <div class="CardThumbnail-module__container--1YPw8 CardThumbnail-module__vertical--3Jyvq">
            <div class="LazyImageLoader-module__container--rusqc">
                <img alt="" class="LazyImageLoader-module__image--34Ldw CardThumbnail-module__image--2YicN" data-src="https://d2ur7st6jjikze.cloudfront.net/offer_photos/83467/545513_medium_1605154297.jpg?1605154297" src="https://d2ur7st6jjikze.cloudfront.net/offer_photos/83467/545513_medium_1605154297.jpg?1605154297">
        <div class="LazyImageLoader-module__displayImage--2IPLI CardThumbnail-module__image--2YicN LazyImageLoader-module__visible--2ofkT" >

        </div>
    </div>
</div>
</div>
<div class="OfferVerticalCard-module__body--2W4EN CardShare-module__body--5Xp8j">
<div class="CardCategory-module__container--26QPo"><div class="CardCategory-module__label--3yWve" style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 1;">여행편의 ・ 제주도</div>
</div>
<h3 class="CardTitle-module__container--IY9rw CardTitle-module__vertical--Ij9WD"><div class="CardTitle-module__title--3oRDQ" style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">[렌터카] 렌터카플랫폼 찜카 25% 할인권_5,10,15,20만원권 (중복이용 가능)</div>
</h3>
<div class="OfferVerticalCard-module__info--307P8"><div class="OfferVerticalCard-module__review--cdVOJ"><div class="CardRating-module__container--3b6dT">
<div class="starRating starRating--m starRating--blue starRating--">
    <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12"><path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z">

    </path>
</svg>
<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12"><path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z">

</path>
</svg>
<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12"><path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z">

</path>
</svg>
<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12"><path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z">

</path>
</svg>
<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12"><path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z">

</path>
</svg>
</div>
<span class="CardRating-module__review--1L-nw">1,810</span>
</div>
</div>
<div class="CardPriceForVertical-module__container--2-T-b">
    <!-- 가격 -->
<!-- <span class="CardPriceForVertical-module__origin--234kx">50,000<span class="CardPriceForVertical-module__unit--2ILoY">원</span>
</span><span class="CardPriceForVertical-module__main--3jiav">37,500<span class="CardPriceForVertical-module__unit--2ILoY">원</span> -->
</span>
<!-- <span class="CardPriceForVertical-module__standard--3-99d"> / 1인</span> -->
</div>
</div>
<div class="OfferVerticalCard-module__immediately--2TVA0">
<!-- <div class="CardInstantBookingSticker-module__container--KypAf CardInstantBookingSticker-module__vertical--3bcwr"><img class="CardInstantBookingSticker-module__icon--2alE6" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI5IiBoZWlnaHQ9IjE2IiB2aWV3Qm94PSIwIDAgOSAxNiI+CiAgICA8cGF0aCBmaWxsPSIjRkZCRjAwIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0yLjk2MyAxNlY5LjIzSDBMNS45MjYgMHY2Ljc3aDIuOTYzeiIvPgo8L3N2Zz4K" alt="즉시확정">
<span class="CardInstantBookingSticker-module__text--1icI9">즉시확정</span>
</div> -->
</div>
</div>
<div class="OfferVerticalCard-module__wishlist--3RAhY">
<img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlPSIjRkZGIiBzdHJva2Utd2lkdGg9IjEuNSIgZD0iTTEyLjEwNSAxOS41ODZsNy4wMTItNy4wMTJhNC41ODMgNC41ODMgMCAxIDAtNi40ODItNi40ODJsLS41My41My0uNTMtLjUzYTQuNTgzIDQuNTgzIDAgMCAwLTYuNDgzIDYuNDgybDcuMDEzIDcuMDEyeiIvPgo8L3N2Zz4K" alt="wishlist" role="button" tabindex="-1">
</div>
</a>
<a href="https://www.myrealtrip.com/offers/14831" class="CardContainer-module__container--15PwL CardShare-module__container--3ENNV CardContainer-module__offer--MXYO5 CardContainer-module__swiper--2aP0C swiper-slide" style="width: 270px;">
    <div class="OfferVerticalCard-module__thumbnail--WrSzy">
        <div class="CardThumbnail-module__container--1YPw8 CardThumbnail-module__vertical--3Jyvq"><div class="LazyImageLoader-module__container--rusqc">
            <img alt="" class="LazyImageLoader-module__image--34Ldw CardThumbnail-module__image--2YicN" data-src="https://d2ur7st6jjikze.cloudfront.net/offer_photos/14831/90902_medium_1525752753.jpg?1525752753" src="https://d2ur7st6jjikze.cloudfront.net/offer_photos/14831/90902_medium_1525752753.jpg?1525752753">
            <div class="LazyImageLoader-module__displayImage--2IPLI CardThumbnail-module__image--2YicN LazyImageLoader-module__visible--2ofkT">
            </div>
            <div class="LazyImageLoader-module__placeholder--1ZKk6 CardThumbnail-module__image--2YicN">

            </div>
        </div>
    </div>
</div>
<div class="OfferVerticalCard-module__body--2W4EN CardShare-module__body--5Xp8j">
    <div class="CardCategory-module__container--26QPo">
        <div class="CardCategory-module__label--3yWve" style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 1;">티켓/패스 ・ 고양</div>
    </div>
    <h3 class="CardTitle-module__container--IY9rw CardTitle-module__vertical--Ij9WD">
        <div class="CardTitle-module__title--3oRDQ" style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">[경 일산 입장권</div>
    </h3>
    <div class="OfferVerticalCard-module__info--307P8">
        <div class="OfferVerticalCard-module__review--cdVOJ">
            <div class="CardRating-module__container--3b6dT">
                <div class="starRating starRating--m starRating--blue starRating--">
                    <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12"><path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z">

                    </path>
                </svg>
                <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12"><path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z">
                    
                </path>
            </svg>
            <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12"><path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z">

            </path>
        </svg>
        <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12">
            <path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z">

            </path>
        </svg>
        <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12">
            <path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z">

            </path>
        </svg>
    </div>
    <span class="CardRating-module__review--1L-nw">167</span>
</div>
</div>
<div class="CardPriceForVertical-module__container--2-T-b">
    <!-- <span class="CardPriceForVertical-module__origin--234kx">29,000<span class="CardPriceForVertical-module__unit--2ILoY">원</span> -->
</span>
    <!-- <span class="CardPriceForVertical-module__main--3jiav">20,000<span class="CardPriceForVertical-module__unit--2ILoY">원</span></span>
    <span class="CardPriceForVertical-module__standard--3-99d"> / 1인</span> -->
</div>
</div>
<div class="OfferVerticalCard-module__immediately--2TVA0">
    <!-- <div class="CardInstantBookingSticker-module__container--KypAf CardInstantBookingSticker-module__vertical--3bcwr">
        <img class="CardInstantBookingSticker-module__icon--2alE6" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI5IiBoZWlnaHQ9IjE2IiB2aWV3Qm94PSIwIDAgOSAxNiI+CiAgICA8cGF0aCBmaWxsPSIjRkZCRjAwIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0yLjk2MyAxNlY5LjIzSDBMNS45MjYgMHY2Ljc3aDIuOTYzeiIvPgo8L3N2Zz4K" alt="즉시확정">
        <span class="CardInstantBookingSticker-module__text--1icI9">즉시확정</span>
    </div> -->
</div>
</div>
<div class="OfferVerticalCard-module__wishlist--3RAhY">
    <img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlPSIjRkZGIiBzdHJva2Utd2lkdGg9IjEuNSIgZD0iTTEyLjEwNSAxOS41ODZsNy4wMTItNy4wMTJhNC41ODMgNC41ODMgMCAxIDAtNi40ODItNi40ODJsLS41My41My0uNTMtLjUzYTQuNTgzIDQuNTgzIDAgMCAwLTYuNDgzIDYuNDgybDcuMDEzIDcuMDEyeiIvPgo8L3N2Zz4K" alt="wishlist" role="button" tabindex="-1">
</div>
</a>
<a href="https://www.myrealtrip.com/offers/81896" class="CardContainer-module__container--15PwL CardShare-module__container--3ENNV CardContainer-module__offer--MXYO5 CardContainer-module__swiper--2aP0C swiper-slide" style="width: 270px;">
    <div class="OfferVerticalCard-module__thumbnail--WrSzy">
        <div class="CardThumbnail-module__container--1YPw8 CardThumbnail-module__vertical--3Jyvq">
            <div class="LazyImageLoader-module__container--rusqc">
                <img alt="" class="LazyImageLoader-module__image--34Ldw CardThumbnail-module__image--2YicN" data-src="https://d2ur7st6jjikze.cloudfront.net/offer_photos/81896/502004_medium_1586325935.jpg?1586325935" src="https://d2ur7st6jjikze.cloudfront.net/offer_photos/81896/502004_medium_1586325935.jpg?1586325935">
                <div class="LazyImageLoader-module__displayImage--2IPLI CardThumbnail-module__image--2YicN LazyImageLoader-module__visible--2ofkT">
                </div>
                <div class="LazyImageLoader-module__placeholder--1ZKk6 CardThumbnail-module__image--2YicN">

                </div>
            </div>
        </div>
    </div>
    <div class="OfferVerticalCard-module__body--2W4EN CardShare-module__body--5Xp8j">
        <div class="CardCategory-module__container--26QPo">
            <div class="CardCategory-module__label--3yWve" style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 1;">티켓/패스 ・ 경기도</div>
        </div>
        <h3 class="CardTitle-module__container--IY9rw CardTitle-module__vertical--Ij9WD">
            <div class="CardTitle-module__title--3oRDQ" style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">[경기 용인] 동백 스포랜드 골프 체험권</div>
        </h3>
        <div class="OfferVerticalCard-module__info--307P8">
            <div class="OfferVerticalCard-module__review--cdVOJ">
                <div class="CardRating-module__container--3b6dT">
                    <div class="starRating starRating--m starRating--blue starRating--">
                        <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12">
                            <path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z"></path>
                        </svg>
                        <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12">
                            <path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z"></path>
                        </svg>
                        <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12">
                            <path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z"></path>
                        </svg>
                        <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12">
                            <path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z"></path>
                        </svg>
                        <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12">
                            <path class="starColor" fill="#51ABF3" fill-rule="evenodd" d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z">

                            </path>
                        </svg>
                    </div>
                    <span class="CardRating-module__review--1L-nw">5</span>
                </div>
            </div>
            <div class="CardPriceForVertical-module__container--2-T-b">
                <!-- <span class="CardPriceForVertical-module__main--3jiav">7,900<span class="CardPriceForVertical-module__unit--2ILoY">원</span>
            </span>
            <span class="CardPriceForVertical-module__standard--3-99d"> / 1인</span> -->
        </div>
    </div>
    <div class="OfferVerticalCard-module__immediately--2TVA0">
        <div class="CardInstantBookingSticker-module__container--KypAf CardInstantBookingSticker-module__vertical--3bcwr">
            <!-- <img class="CardInstantBookingSticker-module__icon--2alE6" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI5IiBoZWlnaHQ9IjE2IiB2aWV3Qm94PSIwIDAgOSAxNiI+CiAgICA8cGF0aCBmaWxsPSIjRkZCRjAwIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0yLjk2MyAxNlY5LjIzSDBMNS45MjYgMHY2Ljc3aDIuOTYzeiIvPgo8L3N2Zz4K" alt="즉시확정">
            <span class="CardInstantBookingSticker-module__text--1icI9">즉시확정</span> -->
        </div>
    </div>
</div>
<div class="OfferVerticalCard-module__wishlist--3RAhY">
    <img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlPSIjRkZGIiBzdHJva2Utd2lkdGg9IjEuNSIgZD0iTTEyLjEwNSAxOS41ODZsNy4wMTItNy4wMTJhNC41ODMgNC41ODMgMCAxIDAtNi40ODItNi40ODJsLS41My41My0uNTMtLjUzYTQuNTgzIDQuNTgzIDAgMCAwLTYuNDgzIDYuNDgybDcuMDEzIDcuMDEyeiIvPgo8L3N2Zz4K" alt="wishlist" role="button" tabindex="-1">
</div>
</a>


</div>
<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
</div>

</div>
</div>
</div>
</div>
</div>

            </section>

	<script>
		// ---- 배너 슬라이드 ----
		//current position
		var pos = 0;
		//number of slides
		var totalSlides = $('#slider-wrap ul li').length;
		//get the slide width
		var sliderWidth = $('#slider-wrap').width();
		$(document).ready(function(){
		/*****************
		 BUILD THE SLIDER
		*****************/
		//set width to be 'x' times the number of slides
		$('#slider-wrap ul#slider').width(sliderWidth*totalSlides);
		    //next slide  
		$('#next').click(function(){
		    slideRight();
		});
		//previous slide
		$('#previous').click(function(){
		    slideLeft();
		});
		/*************************
		 //*> OPTIONAL SETTINGS
		************************/
		//automatic slider
		var autoSlider = setInterval(slideRight, 3000);
		//for each slide 
		$.each($('#slider-wrap ul li'), function() { 
		
		    //create a pagination
		    var li = document.createElement('li');
		    $('#pagination-wrap ul').append(li);    
		});
		//counter
		countSlides();
		//pagination
		pagination();
		//hide/show controls/btns when hover
		//pause automatic slide when hover
		$('#slider-wrap').hover(
		    function(){ $(this).addClass('active'); clearInterval(autoSlider); }, 
		    function(){ $(this).removeClass('active'); autoSlider = setInterval(slideRight, 3000); }
		);
		});//DOCUMENT READY
		/***********
		 SLIDE LEFT
		************/
		function slideLeft(){
		pos--;
		if(pos==-1){ pos = totalSlides-1; }
		$('#slider-wrap ul#slider').css('left', -(sliderWidth*pos));      
		//*> optional
		countSlides();
		pagination();
		}
		/************
		 SLIDE RIGHT
		*************/
		function slideRight(){
		pos++;
		if(pos==totalSlides){ pos = 0; }
		$('#slider-wrap ul#slider').css('left', -(sliderWidth*pos)); 
		//*> optional 
		countSlides();
		pagination();
		}
		/************************
		 //*> OPTIONAL SETTINGS
		************************/
		function countSlides(){
		$('#counter').html(pos+1 + ' / ' + totalSlides);
		}
		
		function pagination(){
		$('#pagination-wrap ul li').removeClass('active');
		$('#pagination-wrap ul li:eq('+pos+')').addClass('active');
		}
		// 배너끝
	</script>
