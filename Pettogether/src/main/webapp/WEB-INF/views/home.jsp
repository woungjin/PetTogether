<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- 배너 -->

<div class="TOP1">
	<span>카테고리별 </span> <span class="TOP1_TOP1">TOP1</span>
</div>
<section class="home-banner">
	<div id="wrapper">
		<div id="slider-wrap">

			<ul id="slider">
				<c:forEach var="lank" items="${lank }">
					<a href="${pageContext.request.contextPath }/starBoard/freeDetail?bno=${lank.bno }">
						<li>
							<div>
								<h3>${lank.category }</h3>
								<span>${lank.title }</span>
							</div> 
							<img src="${pageContext.request.contextPath }/resources/img/starboard/${lank.bno }.jpg"	alt="">
						</li>
					</a>
				</c:forEach>
			</ul>

			<!--controls-->
			<div class="btns" id="next">
				<!-- <i >  </i> -->
				<img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlPSIjNDk1MDU2IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS13aWR0aD0iMiIgZD0iTTEwIDZsNiA2LjAwM0wxMC4wMDcgMTgiLz4KPC9zdmc+Cg==" alt="next">
			</div>
			<div class="btns" id="previous">
				<img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlPSIjNDk1MDU2IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS13aWR0aD0iMiIgZD0iTTE0IDZsLTYgNi4wMDNMMTMuOTkzIDE4Ii8+Cjwvc3ZnPgo=" alt="prev">
			</div>
			<div id="counter"></div>
			<div id="pagination-wrap">
				<ul>
				</ul>
			</div>
			<!--controls-->
		</div>
	</div>
</section>


<div class="tit">
	<h1>이렇게 좋은 곳을 안가보셨다구요?</h1>
	<h2>
		당신의 동물과 함께하세요<span class="italic">!</span>&nbsp;
	</h2>
</div>


<section class="home-tag">
	<div class=".sec_where">
		<div class="where_menu w_cont">
			<div class="swiper-container swiper-container-initialized swiper-container-horizontal">
				<div class="swiper-wrapper"	style="transform: translate3d(0px, 0px, 0px); transition-duration: 0ms;">

					<div class="swiper-slide">
						<h4>
							<a	href="${pageContext.request.contextPath }/starBoard/cateList?cate=호텔">
								<img src="${pageContext.request.contextPath }/resources/img/home/where_icon5.png" alt="">
							</a>
						</h4>
						<p>애견호텔</p>
					</div>
					<div class="swiper-slide swiper-slide-next">
						<h4>
							<a href="${pageContext.request.contextPath }/starBoard/cateList?cate=카페">
								<img src="${pageContext.request.contextPath }/resources/img/home/where_icon2.png" alt="">
							</a>
						</h4>
						<p>애견(동반)카페</p>
					</div>
					<div class="swiper-slide swiper-slide-active">
						<h4>
							<a href="${pageContext.request.contextPath }/starBoard/cateList?cate=공원">
								<img src="${pageContext.request.contextPath }/resources/img/home/where_icon1.png" alt="">
							</a>
						</h4>
						<p>공원</p>
					</div>
					<div class="swiper-slide">
						<h4>
							<a href="${pageContext.request.contextPath }/starBoard/cateList?cate=병원">
								<img src="${pageContext.request.contextPath }/resources/img/home/where_icon3.png" alt="">
							</a>
						</h4>
						<p>병원</p>
					</div>
				</div>
			</div>
 		</div>
 	</div>

			<!-- 마이리얼트립 가져옴 -->
			<section class="MainHeader-module__container--LCI8z">
				<div class="Grid-module__container--1Vs_H">
					<div class="Grid-module__row--338xw Grid-module__full--1lfUT MainCitiesVideos-module__container--15IoM">
						<div class="Carousel-module__container--n92SI">
							<div class="swiper-container swiper-container-horizontal">
								<div class="swiper-wrapper"	style="transform: translate3d(0px, 0px, 0px);"> 
									
									<!-- 여행 -->
									<div class="MainCityVideo-module__container--3bdht swiper-slide swiper-slide-active" style="width: 270px;">
										<a	href="${pageContext.request.contextPath }/starBoard/cateList?cate=호텔">
											<img src="${pageContext.request.contextPath }/resources/img/home/hotel.jpg"	alt="https://d2ur7st6jjikze.cloudfront.net/landscapes/4737_xlarge_square_1535949304.jpg?1535949304"
											class="MainCityVideo-module__imageZoomOutAnimation--1VyM4 ResponsiveImage-module__image--35A4X ResponsiveImage-module__targetHeight--23NtX">
											
											<div class="MainCityVideo-module__header--_YDeH">
												<div class="MainCityVideo-module__titleWrapper--2CvMR">
													<span class="MainCityVideo-module__title--15eaK">호텔</span>
												</div>
											</div>
										</a>
									</div>

									<!-- 카페 -->
									<div class="MainCityVideo-module__container--3bdht swiper-slide swiper-slide-active" style="width: 270px;">
										<a	href="${pageContext.request.contextPath }/starBoard/cateList?cate=카페">
											<img src="${pageContext.request.contextPath }/resources/img/home/cafe.jpg"	alt="https://d2ur7st6jjikze.cloudfront.net/landscapes/4737_xlarge_square_1535949304.jpg?1535949304"
											class="MainCityVideo-module__imageZoomOutAnimation--1VyM4 ResponsiveImage-module__image--35A4X ResponsiveImage-module__targetHeight--23NtX">
										
											<div class="MainCityVideo-module__header--_YDeH">
												<div class="MainCityVideo-module__titleWrapper--2CvMR">
													<span class="MainCityVideo-module__title--15eaK">카페</span>
												</div>
											</div>
										</a>
									</div>

									<!-- 공원 -->
									<div class="MainCityVideo-module__container--3bdht swiper-slide swiper-slide-active" style="width: 270px;">
										<a	href="${pageContext.request.contextPath }/starBoard/cateList?cate=공원">
											<img src="${pageContext.request.contextPath }/resources/img/home/park.jpg"	alt="https://d2ur7st6jjikze.cloudfront.net/landscapes/4737_xlarge_square_1535949304.jpg?1535949304"
											class="MainCityVideo-module__imageZoomOutAnimation--1VyM4 ResponsiveImage-module__image--35A4X ResponsiveImage-module__targetHeight--23NtX">
								
											<div class="MainCityVideo-module__header--_YDeH">
												<div class="MainCityVideo-module__titleWrapper--2CvMR">
													<span class="MainCityVideo-module__title--15eaK">공원</span>
												</div>
											</div>
										</a>
									</div>
									
									<!-- 병원 -->
									<div class="MainCityVideo-module__container--3bdht swiper-slide swiper-slide-active" style="width: 270px;">
										<a	href="${pageContext.request.contextPath }/starBoard/cateList?cate=병원">
											<img src="${pageContext.request.contextPath }/resources/img/home/hospital.jpg"	alt="https://d2ur7st6jjikze.cloudfront.net/landscapes/4737_xlarge_square_1535949304.jpg?1535949304"
											class="MainCityVideo-module__imageZoomOutAnimation--1VyM4 ResponsiveImage-module__image--35A4X ResponsiveImage-module__targetHeight--23NtX">
								
											<div class="MainCityVideo-module__header--_YDeH">
												<div class="MainCityVideo-module__titleWrapper--2CvMR">
													<span class="MainCityVideo-module__title--15eaK">병원</span>
												</div>
											</div>
										</a>
									</div>								
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>

					<!-- ====================================================================================== -->
					<c:forEach var="hello" items="${allList2}" begin="0" end="31"
						varStatus="status">
						<c:if test="${status.index % 8 == 0 }">
							<div class="MainOfferItem-module__container--sebOM">
								<div class="Grid-module__container--1Vs_H">
									<div class="Grid-module__row--338xw">
										<header class="SectionHeader-module__container--2hO_V">
											<div>
												<h2 class="SectionHeader-module__title--2JM-O">${hello.category }
													<img src="${pageContext.request.contextPath }/resources/img/home/${hello.category}${status.index}.png">
												</h2>
											</div>
										</header>
									</div>
								</div>

								<div class="Grid-module__container--1Vs_H">
									<div class="Grid-module__row--338xw Grid-module__full--1lfUT">
										<div class="CardSwiper-module__container--1qr1h CardSwiper-module__common--1XR31">
											<div class="Carousel-module__container--n92SI">
												<div class="swiper-container swiper-container-horizontal">
													<div class="swiper-wrapper" style="width: 1890px; transform: translate3d(0px, 0px, 0px); transition-duration: 0ms;">
														<div class="slideshow-container">
															<div class="mySlides${status.index} fade">

																<c:forEach var="vo" items="${allList2}"	begin="${status.index }" end="${status.index+3 }">
																	<div class="numbertext">1</div>

																	<a	href="${pageContext.request.contextPath }/starBoard/freeDetail?bno=${vo.bno}"
																		class="CardContainer-module__container--15PwL CardShare-module__container--3ENNV CardContainer-module__offer--MXYO5 CardContainer-module__swiper--2aP0C swiper-slide swiper-slide-next"
																		style="width: 270px;">
																		<div class="OfferVerticalCard-module__thumbnail--WrSzy">
																			<div class="CardThumbnail-module__container--1YPw8 CardThumbnail-module__vertical--3Jyvq">
																				<div class="LazyImageLoader-module__container--rusqc">
																					<img class="LazyImageLoader-module__image--34Ldw CardThumbnail-module__image--2YicN"
																						data-src="https://d2ur7st6jjikze.cloudfront.net/offer_photos/83467/545513_medium_1605154297.jpg?1605154297"
																						src="${pageContext.request.contextPath }/resources/img/starboard/${vo.bno }.jpg">
																					<div class="LazyImageLoader-module__displayImage--2IPLI CardThumbnail-module__image--2YicN LazyImageLoader-module__visible--2ofkT">
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="OfferVerticalCard-module__body--2W4EN CardShare-module__body--5Xp8j">
																			<div class="CardCategory-module__container--26QPo">
																				<div class="CardCategory-module__label--3yWve" style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 1;">
																					${vo.category }
																					・ ${vo.petTag }
																				</div>
																			</div>
																			<h3	class="CardTitle-module__container--IY9rw CardTitle-module__vertical--Ij9WD">
																				<div class="CardTitle-module__title--3oRDQ" style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">${vo.title }
																				</div>
																			</h3>
																			<div class="OfferVerticalCard-module__info--307P8">
																				<div class="OfferVerticalCard-module__review--cdVOJ">
																					<div class="CardRating-module__container--3b6dT">
																						<div class="starRating starRating--m starRating--blue starRating--">
																							<c:forEach var="num" begin="1" end="5">
																								<c:choose>
																									<c:when test="${vo.review_avg >= num}">
																										<i style="color: red;"><svg xmlns="http://www.w3.org/2000/svg"
																												width="12" height="12" viewBox="0 0 12 12">
																												<path class="starColor" fill="#51ABF3"
																													fill-rule="evenodd"
																													d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z"></path></i>
																										</svg>
																									</c:when>
																									<c:when test="${vo.review_avg <= num }">
																										<i><svg xmlns="http://www.w3.org/2000/svg"
																												width="12" height="12" viewBox="0 0 12 12">
																												<path class="starColor" fill="silver"
																													fill-rule="evenodd"
																													d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z"></path></i>
																										</svg>
																										</i>
																									</c:when>
																								</c:choose>
																							</c:forEach>


																						</div>
																						<span class="CardRating-module__review--1L-nw">${vo.review_total }</span>
																					</div>
																				</div>
																				<div
																					class="CardPriceForVertical-module__container--2-T-b">
																					<!-- 가격 -->
																					<!-- <span class="CardPriceForVertical-module__origin--234kx">50,000<span class="CardPriceForVertical-module__unit--2ILoY">원</span>
                                        </span><span class="CardPriceForVertical-module__main--3jiav">37,500<span class="CardPriceForVertical-module__unit--2ILoY">원</span> -->
																					</span>
																					<!-- <span class="CardPriceForVertical-module__standard--3-99d"> / 1인</span> -->
																				</div>
																			</div>
																			<div
																				class="OfferVerticalCard-module__immediately--2TVA0">
																				<!-- <div class="CardInstantBookingSticker-module__container--KypAf CardInstantBookingSticker-module__vertical--3bcwr"><img class="CardInstantBookingSticker-module__icon--2alE6" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI5IiBoZWlnaHQ9IjE2IiB2aWV3Qm94PSIwIDAgOSAxNiI+CiAgICA8cGF0aCBmaWxsPSIjRkZCRjAwIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0yLjk2MyAxNlY5LjIzSDBMNS45MjYgMHY2Ljc3aDIuOTYzeiIvPgo8L3N2Zz4K" alt="즉시확정">
                                        <span class="CardInstantBookingSticker-module__text--1icI9">즉시확정</span>
                                        </div> -->
																			</div>
																		</div>
																		<div class="OfferVerticalCard-module__wishlist--3RAhY">
																			<img
																				src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlPSIjRkZGIiBzdHJva2Utd2lkdGg9IjEuNSIgZD0iTTEyLjEwNSAxOS41ODZsNy4wMTItNy4wMTJhNC41ODMgNC41ODMgMCAxIDAtNi40ODItNi40ODJsLS41My41My0uNTMtLjUzYTQuNTgzIDQuNTgzIDAgMCAwLTYuNDgzIDYuNDgybDcuMDEzIDcuMDEyeiIvPgo8L3N2Zz4K"
																				alt="wishlist" role="button" tabindex="-1">
																		</div>
																	</a>

																</c:forEach>


																<div class="text">
																	<!-- Caption Text -->
																</div>
															</div>

															<div class="mySlides${status.index} fade">
																<c:forEach var="vo" items="${allList2}"
																	begin="${status.index+4 }" end="${status.index+7 }">

																	<div class="numbertext">2</div>

																	<a
																		href="${pageContext.request.contextPath }/starBoard/freeDetail?bno=${vo.bno}"
																		class="CardContainer-module__container--15PwL CardShare-module__container--3ENNV CardContainer-module__offer--MXYO5 CardContainer-module__swiper--2aP0C swiper-slide swiper-slide-next"
																		style="width: 270px;">
																		<div
																			class="OfferVerticalCard-module__thumbnail--WrSzy">
																			<div
																				class="CardThumbnail-module__container--1YPw8 CardThumbnail-module__vertical--3Jyvq">
																				<div
																					class="LazyImageLoader-module__container--rusqc">
																					<img alt=""
																						class="LazyImageLoader-module__image--34Ldw CardThumbnail-module__image--2YicN"
																						data-src="https://d2ur7st6jjikze.cloudfront.net/offer_photos/83467/545513_medium_1605154297.jpg?1605154297"
																						src="${pageContext.request.contextPath }/resources/img/starboard/${vo.bno }.jpg">
																					<div
																						class="LazyImageLoader-module__displayImage--2IPLI CardThumbnail-module__image--2YicN LazyImageLoader-module__visible--2ofkT">

																					</div>
																				</div>
																			</div>
																		</div>
																		<div
																			class="OfferVerticalCard-module__body--2W4EN CardShare-module__body--5Xp8j">
																			<div class="CardCategory-module__container--26QPo">
																				<div class="CardCategory-module__label--3yWve"
																					style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 1;">${vo.category }
																					・ ${vo.petTag }</div>
																			</div>
																			<h3
																				class="CardTitle-module__container--IY9rw CardTitle-module__vertical--Ij9WD">
																				<div class="CardTitle-module__title--3oRDQ"
																					style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">${vo.title }</div>
																			</h3>
																			<div class="OfferVerticalCard-module__info--307P8">
																				<div class="OfferVerticalCard-module__review--cdVOJ">
																					<div class="CardRating-module__container--3b6dT">
																						<div
																							class="starRating starRating--m starRating--blue starRating--">

																							<c:forEach var="num" begin="1" end="5">
																								<c:choose>
																									<c:when test="${vo.review_avg >= num}">
																										<i style="color: red;"><svg
																												xmlns="http://www.w3.org/2000/svg"
																												width="12" height="12" viewBox="0 0 12 12">
																												<path class="starColor" fill="#51ABF3"
																													fill-rule="evenodd"
																													d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z"></path></i>
																										</svg>
																									</c:when>
																									<c:when test="${vo.review_avg <= num }">
																										<i><svg xmlns="http://www.w3.org/2000/svg"
																												width="12" height="12" viewBox="0 0 12 12">
																												<path class="starColor" fill="silver"
																													fill-rule="evenodd"
																													d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z"></path></i>
																										</svg>
																										</i>
																									</c:when>
																								</c:choose>
																							</c:forEach>


																						</div>
																						<span class="CardRating-module__review--1L-nw">${vo.review_total }</span>
																					</div>
																				</div>
																				<div
																					class="CardPriceForVertical-module__container--2-T-b">
																					<!-- 가격 -->
																					<!-- <span class="CardPriceForVertical-module__origin--234kx">50,000<span class="CardPriceForVertical-module__unit--2ILoY">원</span>
                                        </span><span class="CardPriceForVertical-module__main--3jiav">37,500<span class="CardPriceForVertical-module__unit--2ILoY">원</span> -->
																					</span>
																					<!-- <span class="CardPriceForVertical-module__standard--3-99d"> / 1인</span> -->
																				</div>
																			</div>
																			<div
																				class="OfferVerticalCard-module__immediately--2TVA0">
																				<!-- <div class="CardInstantBookingSticker-module__container--KypAf CardInstantBookingSticker-module__vertical--3bcwr"><img class="CardInstantBookingSticker-module__icon--2alE6" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI5IiBoZWlnaHQ9IjE2IiB2aWV3Qm94PSIwIDAgOSAxNiI+CiAgICA8cGF0aCBmaWxsPSIjRkZCRjAwIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0yLjk2MyAxNlY5LjIzSDBMNS45MjYgMHY2Ljc3aDIuOTYzeiIvPgo8L3N2Zz4K" alt="즉시확정">
                                        <span class="CardInstantBookingSticker-module__text--1icI9">즉시확정</span>
                                        </div> -->
																			</div>
																		</div>
																		<div class="OfferVerticalCard-module__wishlist--3RAhY">
																			<img
																				src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlPSIjRkZGIiBzdHJva2Utd2lkdGg9IjEuNSIgZD0iTTEyLjEwNSAxOS41ODZsNy4wMTItNy4wMTJhNC41ODMgNC41ODMgMCAxIDAtNi40ODItNi40ODJsLS41My41My0uNTMtLjUzYTQuNTgzIDQuNTgzIDAgMCAwLTYuNDgzIDYuNDgybDcuMDEzIDcuMDEyeiIvPgo8L3N2Zz4K"
																				alt="wishlist" role="button" tabindex="-1">
																		</div>
																	</a>

																</c:forEach>




																<div class="text">
																	<!-- Caption Two -->
																</div>
															</div>

															<a class="prev" onclick="plusSlides${status.index}(-1)">&#10094;</a>
															<a class="next" onclick="plusSlides${status.index}(1)">&#10095;</a>

														</div>
														<br>

														<div style="text-align: center">
															<span class="swiper-pagination-bullet dot${status.index}"
																onclick="currentSlide${status.index}(1)" tabindex="0"
																role="button" aria-label="Go to slide 1"></span> <span
																class="swiper-pagination-bullet dot${status.index}"
																onclick="currentSlide${status.index}(2)" tabindex="0"
																role="button" aria-label="Go to slide 1"></span>
														</div>
						</c:if>
					</c:forEach>

					<!-- ====================================================================================== -->






					<!-- 이번주 랜덤 게시판 22222222222-->


					<div class="MainOfferItem-module__container--sebOM">
						<div class="MainOfferItem-module__line--oq9RI"></div>
						<div class="Grid-module__container--1Vs_H">
							<div class="Grid-module__row--338xw">
								<header class="SectionHeader-module__container--2hO_V">

									<div>
										<h2 class="SectionHeader-module__title--2JM-O">이번주 랜덤
											게시판2</h2>
									</div>

								</header>
							</div>
						</div>

						<div class="Grid-module__container--1Vs_H">
							<div class="Grid-module__row--338xw Grid-module__full--1lfUT">
								<div
									class="CardSwiper-module__container--1qr1h CardSwiper-module__common--1XR31">
									<div class="Carousel-module__container--n92SI">
										<div class="swiper-container swiper-container-horizontal">
											<div class="swiper-wrapper"
												style="width: 1890px; transform: translate3d(0px, 0px, 0px); transition-duration: 0ms;">




												<div class="slideshow-container">

													<div class="mySlides2 fade">


														<c:forEach var="vo" items="${random}" begin="0" end="3">
															<div class="numbertext">1</div>

															<a
																href="${pageContext.request.contextPath }/starBoard/freeDetail?bno=${vo.bno}"
																class="CardContainer-module__container--15PwL CardShare-module__container--3ENNV CardContainer-module__offer--MXYO5 CardContainer-module__swiper--2aP0C swiper-slide swiper-slide-next"
																style="width: 270px;">
																<div class="OfferVerticalCard-module__thumbnail--WrSzy">
																	<div
																		class="CardThumbnail-module__container--1YPw8 CardThumbnail-module__vertical--3Jyvq">
																		<div class="LazyImageLoader-module__container--rusqc">
																			<img alt=""
																				class="LazyImageLoader-module__image--34Ldw CardThumbnail-module__image--2YicN"
																				data-src="https://d2ur7st6jjikze.cloudfront.net/offer_photos/83467/545513_medium_1605154297.jpg?1605154297"
																				src="${pageContext.request.contextPath }/resources/img/starboard/${vo.bno }.jpg">
																			<div
																				class="LazyImageLoader-module__displayImage--2IPLI CardThumbnail-module__image--2YicN LazyImageLoader-module__visible--2ofkT">

																			</div>
																		</div>
																	</div>
																</div>
																<div
																	class="OfferVerticalCard-module__body--2W4EN CardShare-module__body--5Xp8j">
																	<div class="CardCategory-module__container--26QPo">
																		<div class="CardCategory-module__label--3yWve"
																			style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 1;">${vo.category }
																			・ ${vo.petTag }</div>
																	</div>
																	<h3
																		class="CardTitle-module__container--IY9rw CardTitle-module__vertical--Ij9WD">
																		<div class="CardTitle-module__title--3oRDQ"
																			style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">${vo.title }</div>
																	</h3>
																	<div class="OfferVerticalCard-module__info--307P8">
																		<div class="OfferVerticalCard-module__review--cdVOJ">
																			<div class="CardRating-module__container--3b6dT">
																				<div
																					class="starRating starRating--m starRating--blue starRating--">

																					<c:forEach var="num" begin="1" end="5">
																						<c:choose>
																							<c:when test="${vo.review_avg >= num}">
																								<i style="color: red;"><svg
																										xmlns="http://www.w3.org/2000/svg" width="12"
																										height="12" viewBox="0 0 12 12">
																										<path class="starColor" fill="#51ABF3"
																											fill-rule="evenodd"
																											d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z"></path></i>
																								</svg>
																							</c:when>
																							<c:when test="${vo.review_avg <= num }">
																								<i><svg xmlns="http://www.w3.org/2000/svg"
																										width="12" height="12" viewBox="0 0 12 12">
																										<path class="starColor" fill="silver"
																											fill-rule="evenodd"
																											d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z"></path></i>
																								</svg>
																								</i>
																							</c:when>
																						</c:choose>
																					</c:forEach>


																				</div>
																				<span class="CardRating-module__review--1L-nw">${vo.review_total }</span>
																			</div>
																		</div>
																		<div
																			class="CardPriceForVertical-module__container--2-T-b">
																			<!-- 가격 -->
																			<!-- <span class="CardPriceForVertical-module__origin--234kx">50,000<span class="CardPriceForVertical-module__unit--2ILoY">원</span>
                                        </span><span class="CardPriceForVertical-module__main--3jiav">37,500<span class="CardPriceForVertical-module__unit--2ILoY">원</span> -->
																			</span>
																			<!-- <span class="CardPriceForVertical-module__standard--3-99d"> / 1인</span> -->
																		</div>
																	</div>
																	<div
																		class="OfferVerticalCard-module__immediately--2TVA0">
																		<!-- <div class="CardInstantBookingSticker-module__container--KypAf CardInstantBookingSticker-module__vertical--3bcwr"><img class="CardInstantBookingSticker-module__icon--2alE6" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI5IiBoZWlnaHQ9IjE2IiB2aWV3Qm94PSIwIDAgOSAxNiI+CiAgICA8cGF0aCBmaWxsPSIjRkZCRjAwIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0yLjk2MyAxNlY5LjIzSDBMNS45MjYgMHY2Ljc3aDIuOTYzeiIvPgo8L3N2Zz4K" alt="즉시확정">
                                        <span class="CardInstantBookingSticker-module__text--1icI9">즉시확정</span>
                                        </div> -->
																	</div>
																</div>
																<div class="OfferVerticalCard-module__wishlist--3RAhY">
																	<img
																		src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlPSIjRkZGIiBzdHJva2Utd2lkdGg9IjEuNSIgZD0iTTEyLjEwNSAxOS41ODZsNy4wMTItNy4wMTJhNC41ODMgNC41ODMgMCAxIDAtNi40ODItNi40ODJsLS41My41My0uNTMtLjUzYTQuNTgzIDQuNTgzIDAgMCAwLTYuNDgzIDYuNDgybDcuMDEzIDcuMDEyeiIvPgo8L3N2Zz4K"
																		alt="wishlist" role="button" tabindex="-1">
																</div>
															</a>

														</c:forEach>


														<div class="text">
															<!-- Caption Text -->
														</div>
													</div>

													<div class="mySlides2 fade">
														<c:forEach var="vo" items="${random}" begin="4" end="7">
															<div class="numbertext">2</div>
															<a
																href="${pageContext.request.contextPath }/starBoard/freeDetail?bno=${vo.bno}"
																class="CardContainer-module__container--15PwL CardShare-module__container--3ENNV CardContainer-module__offer--MXYO5 CardContainer-module__swiper--2aP0C swiper-slide swiper-slide-next"
																style="width: 270px;">
																<div class="OfferVerticalCard-module__thumbnail--WrSzy">
																	<div
																		class="CardThumbnail-module__container--1YPw8 CardThumbnail-module__vertical--3Jyvq">
																		<div class="LazyImageLoader-module__container--rusqc">
																			<img alt=""
																				class="LazyImageLoader-module__image--34Ldw CardThumbnail-module__image--2YicN"
																				data-src="https://d2ur7st6jjikze.cloudfront.net/offer_photos/83467/545513_medium_1605154297.jpg?1605154297"
																				src="${pageContext.request.contextPath }/resources/img/starboard/${vo.bno }.jpg">
																			<div
																				class="LazyImageLoader-module__displayImage--2IPLI CardThumbnail-module__image--2YicN LazyImageLoader-module__visible--2ofkT">

																			</div>
																		</div>
																	</div>
																</div>
																<div
																	class="OfferVerticalCard-module__body--2W4EN CardShare-module__body--5Xp8j">
																	<div class="CardCategory-module__container--26QPo">
																		<div class="CardCategory-module__label--3yWve"
																			style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 1;">${vo.category }
																			・ ${vo.petTag }</div>
																	</div>
																	<h3
																		class="CardTitle-module__container--IY9rw CardTitle-module__vertical--Ij9WD">
																		<div class="CardTitle-module__title--3oRDQ"
																			style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">${vo.title }</div>
																	</h3>
																	<div class="OfferVerticalCard-module__info--307P8">
																		<div class="OfferVerticalCard-module__review--cdVOJ">
																			<div class="CardRating-module__container--3b6dT">
																				<div
																					class="starRating starRating--m starRating--blue starRating--">

																					<c:forEach var="num" begin="1" end="5">
																						<c:choose>
																							<c:when test="${vo.review_avg >= num}">
																								<i style="color: red;"><svg
																										xmlns="http://www.w3.org/2000/svg" width="12"
																										height="12" viewBox="0 0 12 12">
																										<path class="starColor" fill="#51ABF3"
																											fill-rule="evenodd"
																											d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z"></path></i>
																								</svg>
																							</c:when>
																							<c:when test="${vo.review_avg <= num }">
																								<i><svg xmlns="http://www.w3.org/2000/svg"
																										width="12" height="12" viewBox="0 0 12 12">
																										<path class="starColor" fill="silver"
																											fill-rule="evenodd"
																											d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z"></path></i>
																								</svg>
																								</i>
																							</c:when>
																						</c:choose>
																					</c:forEach>


																				</div>
																				<span class="CardRating-module__review--1L-nw">${vo.review_total }</span>
																			</div>
																		</div>
																		<div
																			class="CardPriceForVertical-module__container--2-T-b">
																			<!-- 가격 -->
																			<!-- <span class="CardPriceForVertical-module__origin--234kx">50,000<span class="CardPriceForVertical-module__unit--2ILoY">원</span>
                                        </span><span class="CardPriceForVertical-module__main--3jiav">37,500<span class="CardPriceForVertical-module__unit--2ILoY">원</span> -->
																			</span>
																			<!-- <span class="CardPriceForVertical-module__standard--3-99d"> / 1인</span> -->
																		</div>
																	</div>
																	<div
																		class="OfferVerticalCard-module__immediately--2TVA0">
																		<!-- <div class="CardInstantBookingSticker-module__container--KypAf CardInstantBookingSticker-module__vertical--3bcwr"><img class="CardInstantBookingSticker-module__icon--2alE6" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI5IiBoZWlnaHQ9IjE2IiB2aWV3Qm94PSIwIDAgOSAxNiI+CiAgICA8cGF0aCBmaWxsPSIjRkZCRjAwIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0yLjk2MyAxNlY5LjIzSDBMNS45MjYgMHY2Ljc3aDIuOTYzeiIvPgo8L3N2Zz4K" alt="즉시확정">
                                        <span class="CardInstantBookingSticker-module__text--1icI9">즉시확정</span>
                                        </div> -->
																	</div>
																</div>
																<div class="OfferVerticalCard-module__wishlist--3RAhY">
																	<img
																		src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlPSIjRkZGIiBzdHJva2Utd2lkdGg9IjEuNSIgZD0iTTEyLjEwNSAxOS41ODZsNy4wMTItNy4wMTJhNC41ODMgNC41ODMgMCAxIDAtNi40ODItNi40ODJsLS41My41My0uNTMtLjUzYTQuNTgzIDQuNTgzIDAgMCAwLTYuNDgzIDYuNDgybDcuMDEzIDcuMDEyeiIvPgo8L3N2Zz4K"
																		alt="wishlist" role="button" tabindex="-1">
																</div>
															</a>
														</c:forEach>




														<div class="text">
															<!-- Caption Two -->
														</div>
													</div>

													<a class="prev" onclick="plusSlides2(-1)">&#10094;</a> <a
														class="next" onclick="plusSlides2(1)">&#10095;</a>

												</div>
												<br>

												<div style="text-align: center">
													<span class="dot2" onclick="currentSlide2(1)"></span> <span
														class="dot2" onclick="currentSlide2(2)"></span>

												</div>







												<!-- ====================================================================================== -->
												<!-- 최근 본 게시글  1111111111 -->
												<div class="MainOfferItem-module__container--sebOM">
													<div class="MainOfferItem-module__line--oq9RI"></div>
													<div class="Grid-module__container--1Vs_H">
														<div class="Grid-module__row--338xw">
															<header class="SectionHeader-module__container--2hO_V">
																<c:if test="${cookieBoard[0] != null }">
																	<div>
																		<h2 class="SectionHeader-module__title--2JM-O">최근
																			본 게시글1</h2>
																	</div>
																</c:if>
															</header>
														</div>
													</div>

													<div class="Grid-module__container--1Vs_H">
														<div
															class="Grid-module__row--338xw Grid-module__full--1lfUT">
															<div
																class="CardSwiper-module__container--1qr1h CardSwiper-module__common--1XR31">
																<div class="Carousel-module__container--n92SI">
																	<div
																		class="swiper-container swiper-container-horizontal">
																		<div class="swiper-wrapper"
																			style="width: 1890px; transform: translate3d(0px, 0px, 0px); transition-duration: 0ms;">




																			<div class="slideshow-container">

																				<div class="mySlides fade">


																					<c:forEach var="vo" items="${cookieBoard}"
																						begin="0" end="3">
																						<div class="numbertext">1</div>

																						<a
																							href="${pageContext.request.contextPath }/starBoard/freeDetail?bno=${vo.bno}"
																							class="CardContainer-module__container--15PwL CardShare-module__container--3ENNV CardContainer-module__offer--MXYO5 CardContainer-module__swiper--2aP0C swiper-slide swiper-slide-next"
																							style="width: 270px;">
																							<div
																								class="OfferVerticalCard-module__thumbnail--WrSzy">
																								<div
																									class="CardThumbnail-module__container--1YPw8 CardThumbnail-module__vertical--3Jyvq">
																									<div
																										class="LazyImageLoader-module__container--rusqc">
																										<img alt=""
																											class="LazyImageLoader-module__image--34Ldw CardThumbnail-module__image--2YicN"
																											data-src="https://d2ur7st6jjikze.cloudfront.net/offer_photos/83467/545513_medium_1605154297.jpg?1605154297"
																											src="${pageContext.request.contextPath }/resources/img/starboard/${vo.bno }.jpg">
																										<div
																											class="LazyImageLoader-module__displayImage--2IPLI CardThumbnail-module__image--2YicN LazyImageLoader-module__visible--2ofkT">

																										</div>
																									</div>
																								</div>
																							</div>
																							<div
																								class="OfferVerticalCard-module__body--2W4EN CardShare-module__body--5Xp8j">
																								<div
																									class="CardCategory-module__container--26QPo">
																									<div class="CardCategory-module__label--3yWve"
																										style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 1;">${vo.category }
																										・ ${vo.petTag }</div>
																								</div>
																								<h3
																									class="CardTitle-module__container--IY9rw CardTitle-module__vertical--Ij9WD">
																									<div class="CardTitle-module__title--3oRDQ"
																										style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">${vo.title }</div>
																								</h3>
																								<div
																									class="OfferVerticalCard-module__info--307P8">
																									<div
																										class="OfferVerticalCard-module__review--cdVOJ">
																										<div
																											class="CardRating-module__container--3b6dT">
																											<div
																												class="starRating starRating--m starRating--blue starRating--">

																												<c:forEach var="num" begin="1" end="5">
																													<c:choose>
																														<c:when test="${vo.review_avg >= num}">
																															<i style="color: red;"><svg
																																	xmlns="http://www.w3.org/2000/svg"
																																	width="12" height="12"
																																	viewBox="0 0 12 12">
																																	<path class="starColor" fill="#51ABF3"
																																		fill-rule="evenodd"
																																		d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z"></path></i>
																															</svg>
																														</c:when>
																														<c:when test="${vo.review_avg <= num }">
																															<i><svg
																																	xmlns="http://www.w3.org/2000/svg"
																																	width="12" height="12"
																																	viewBox="0 0 12 12">
																																	<path class="starColor" fill="silver"
																																		fill-rule="evenodd"
																																		d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z"></path></i>
																															</svg>
																															</i>
																														</c:when>
																													</c:choose>
																												</c:forEach>


																											</div>
																											<span
																												class="CardRating-module__review--1L-nw">${vo.review_total }</span>
																										</div>
																									</div>
																									<div
																										class="CardPriceForVertical-module__container--2-T-b">
																										<!-- 가격 -->
																										<!-- <span class="CardPriceForVertical-module__origin--234kx">50,000<span class="CardPriceForVertical-module__unit--2ILoY">원</span>
                                        </span><span class="CardPriceForVertical-module__main--3jiav">37,500<span class="CardPriceForVertical-module__unit--2ILoY">원</span> -->
																										</span>
																										<!-- <span class="CardPriceForVertical-module__standard--3-99d"> / 1인</span> -->
																									</div>
																								</div>
																								<div
																									class="OfferVerticalCard-module__immediately--2TVA0">
																									<!-- <div class="CardInstantBookingSticker-module__container--KypAf CardInstantBookingSticker-module__vertical--3bcwr"><img class="CardInstantBookingSticker-module__icon--2alE6" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI5IiBoZWlnaHQ9IjE2IiB2aWV3Qm94PSIwIDAgOSAxNiI+CiAgICA8cGF0aCBmaWxsPSIjRkZCRjAwIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0yLjk2MyAxNlY5LjIzSDBMNS45MjYgMHY2Ljc3aDIuOTYzeiIvPgo8L3N2Zz4K" alt="즉시확정">
                                        <span class="CardInstantBookingSticker-module__text--1icI9">즉시확정</span>
                                        </div> -->
																								</div>
																							</div>
																							<div
																								class="OfferVerticalCard-module__wishlist--3RAhY">
																								<img
																									src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlPSIjRkZGIiBzdHJva2Utd2lkdGg9IjEuNSIgZD0iTTEyLjEwNSAxOS41ODZsNy4wMTItNy4wMTJhNC41ODMgNC41ODMgMCAxIDAtNi40ODItNi40ODJsLS41My41My0uNTMtLjUzYTQuNTgzIDQuNTgzIDAgMCAwLTYuNDgzIDYuNDgybDcuMDEzIDcuMDEyeiIvPgo8L3N2Zz4K"
																									alt="wishlist" role="button" tabindex="-1">
																							</div>
																						</a>

																					</c:forEach>


																					<div class="text">
																						<!-- Caption Text -->
																					</div>
																				</div>


																				<div class="mySlides fade">
																					<c:forEach var="vo" items="${cookieBoard}"
																						begin="4" end="7">
																						<div class="numbertext">2</div>
																						<a
																							href="${pageContext.request.contextPath }/starBoard/freeDetail?bno=${vo.bno}"
																							class="CardContainer-module__container--15PwL CardShare-module__container--3ENNV CardContainer-module__offer--MXYO5 CardContainer-module__swiper--2aP0C swiper-slide swiper-slide-next"
																							style="width: 270px;">
																							<div
																								class="OfferVerticalCard-module__thumbnail--WrSzy">
																								<div
																									class="CardThumbnail-module__container--1YPw8 CardThumbnail-module__vertical--3Jyvq">
																									<div
																										class="LazyImageLoader-module__container--rusqc">
																										<img alt=""
																											class="LazyImageLoader-module__image--34Ldw CardThumbnail-module__image--2YicN"
																											data-src="https://d2ur7st6jjikze.cloudfront.net/offer_photos/83467/545513_medium_1605154297.jpg?1605154297"
																											src="${pageContext.request.contextPath }/resources/img/starboard/${vo.bno }.jpg">
																										<div
																											class="LazyImageLoader-module__displayImage--2IPLI CardThumbnail-module__image--2YicN LazyImageLoader-module__visible--2ofkT">

																										</div>
																									</div>
																								</div>
																							</div>
																							<div
																								class="OfferVerticalCard-module__body--2W4EN CardShare-module__body--5Xp8j">
																								<div
																									class="CardCategory-module__container--26QPo">
																									<div class="CardCategory-module__label--3yWve"
																										style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 1;">${vo.category }
																										・ ${vo.petTag }</div>
																								</div>
																								<h3
																									class="CardTitle-module__container--IY9rw CardTitle-module__vertical--Ij9WD">
																									<div class="CardTitle-module__title--3oRDQ"
																										style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">${vo.title }</div>
																								</h3>
																								<div
																									class="OfferVerticalCard-module__info--307P8">
																									<div
																										class="OfferVerticalCard-module__review--cdVOJ">
																										<div
																											class="CardRating-module__container--3b6dT">
																											<div
																												class="starRating starRating--m starRating--blue starRating--">

																												<c:forEach var="num" begin="1" end="5">
																													<c:choose>
																														<c:when test="${vo.review_avg >= num}">
																															<i style="color: red;"><svg
																																	xmlns="http://www.w3.org/2000/svg"
																																	width="12" height="12"
																																	viewBox="0 0 12 12">
																																	<path class="starColor" fill="#51ABF3"
																																		fill-rule="evenodd"
																																		d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z"></path></i>
																															</svg>
																														</c:when>
																														<c:when test="${vo.review_avg <= num }">
																															<i><svg
																																	xmlns="http://www.w3.org/2000/svg"
																																	width="12" height="12"
																																	viewBox="0 0 12 12">
																																	<path class="starColor" fill="silver"
																																		fill-rule="evenodd"
																																		d="M6 9.121L2.292 11 3 7.02 0 4.202l4.146-.581L6 0l1.854 3.621 4.146.58-3 2.82L9.708 11z"></path></i>
																															</svg>
																															</i>
																														</c:when>
																													</c:choose>
																												</c:forEach>


																											</div>
																											<span
																												class="CardRating-module__review--1L-nw">${vo.review_total }</span>
																										</div>
																									</div>
																									<div
																										class="CardPriceForVertical-module__container--2-T-b">
																										<!-- 가격 -->
																										<!-- <span class="CardPriceForVertical-module__origin--234kx">50,000<span class="CardPriceForVertical-module__unit--2ILoY">원</span>
                                        </span><span class="CardPriceForVertical-module__main--3jiav">37,500<span class="CardPriceForVertical-module__unit--2ILoY">원</span> -->
																										</span>
																										<!-- <span class="CardPriceForVertical-module__standard--3-99d"> / 1인</span> -->
																									</div>
																								</div>
																								<div
																									class="OfferVerticalCard-module__immediately--2TVA0">
																									<!-- <div class="CardInstantBookingSticker-module__container--KypAf CardInstantBookingSticker-module__vertical--3bcwr"><img class="CardInstantBookingSticker-module__icon--2alE6" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI5IiBoZWlnaHQ9IjE2IiB2aWV3Qm94PSIwIDAgOSAxNiI+CiAgICA8cGF0aCBmaWxsPSIjRkZCRjAwIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0yLjk2MyAxNlY5LjIzSDBMNS45MjYgMHY2Ljc3aDIuOTYzeiIvPgo8L3N2Zz4K" alt="즉시확정">
                                        <span class="CardInstantBookingSticker-module__text--1icI9">즉시확정</span>
                                        </div> -->
																								</div>
																							</div>
																							<div
																								class="OfferVerticalCard-module__wishlist--3RAhY">
																								<img
																									src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlPSIjRkZGIiBzdHJva2Utd2lkdGg9IjEuNSIgZD0iTTEyLjEwNSAxOS41ODZsNy4wMTItNy4wMTJhNC41ODMgNC41ODMgMCAxIDAtNi40ODItNi40ODJsLS41My41My0uNTMtLjUzYTQuNTgzIDQuNTgzIDAgMCAwLTYuNDgzIDYuNDgybDcuMDEzIDcuMDEyeiIvPgo8L3N2Zz4K"
																									alt="wishlist" role="button" tabindex="-1">
																							</div>
																						</a>
																					</c:forEach>



																					<div class="text">
																						<!-- Caption Tw o -->
																					</div>
																				</div>
																				<c:if test="${cookieBoard[4] != null }">

																					<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
																					<a class="next" onclick="plusSlides(1)">&#10095;</a>
																			</div>
																			<br>

																			<div style="text-align: center">
																				<span class="dot" onclick="currentSlide(1)"></span>
																				<span class="dot" onclick="currentSlide(2)"></span>

																			</div>
																			</c:if>





																			<!-- 추천상품 -->
																			<!-- 이번주 랜덤 게시글 22222222222222222222-->


																			<!-- ====================================================================================== -->
																			<!-- 호텔 병원  -->
																			<!-- 최근 본 게시글 -->
																			<!-- ====================================================================================== -->



																			<!-- ====================================================================================== -->


																			<!-- 이번주 랜덤 게시판 -->








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
	$(document).ready(function() {
		/*****************
		 BUILD THE SLIDER
		 *****************/
		//set width to be 'x' times the number of slides
		$('#slider-wrap ul#slider').width(sliderWidth * totalSlides);
		//next slide  
		$('#next').click(function() {
			slideRight();
		});
		//previous slide
		$('#previous').click(function() {
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
		$('#slider-wrap').hover(function() {
			$(this).addClass('active');
			clearInterval(autoSlider);
		}, function() {
			$(this).removeClass('active');
			autoSlider = setInterval(slideRight, 3000);
		});
	});//DOCUMENT READY
	/***********
	 SLIDE LEFT
	 ************/
	function slideLeft() {
		pos--;
		if (pos == -1) {
			pos = totalSlides - 1;
		}
		$('#slider-wrap ul#slider').css('left', -(sliderWidth * pos));
		//*> optional
		countSlides();
		pagination();
	}
	/************
	 SLIDE RIGHT
	 *************/
	function slideRight() {
		pos++;
		if (pos == totalSlides) {
			pos = 0;
		}
		$('#slider-wrap ul#slider').css('left', -(sliderWidth * pos));
		//*> optional 
		countSlides();
		pagination();
	}
	/************************
	 //*> OPTIONAL SETTINGS
	 ************************/
	function countSlides() {
		$('#counter').html(pos + 1 + ' / ' + totalSlides);
	}

	function pagination() {
		$('#pagination-wrap ul li').removeClass('active');
		$('#pagination-wrap ul li:eq(' + pos + ')').addClass('active');
	}
	// 배너끝

/* 	if (self.name != 'reload') {
		self.name = 'reload';
		self.location.reload(true);
	} else {
		self.name = '';

	} */

	// 2
	var slideIndex2 = 1;
	showSlides2(slideIndex2);

	function plusSlides2(n2) {
		showSlides2(slideIndex2 += n2);
	}

	function currentSlide2(n2) {
		showSlides2(slideIndex2 = n2);
	}

	function showSlides2(n2) {
		var i2;
		var slides2 = document.getElementsByClassName("mySlides2");
		var dots2 = document.getElementsByClassName("dot2");
		if (n2 > slides2.length) {
			slideIndex2 = 1
		}
		if (n2 < 1) {
			slideIndex2 = slides2.length
		}
		for (i2 = 0; i2 < slides2.length; i2++) {
			slides2[i2].style.display = "none";
		}
		for (i2 = 0; i2 < dots2.length; i2++) {
			dots2[i2].className = dots2[i2].className.replace(" active", "");
		}
		slides2[slideIndex2 - 1].style.display = "block";
		dots2[slideIndex2 - 1].className += " active";
	}

	// 0 호텔 
	var slideIndex0 = 1;
	showSlides0(slideIndex0);

	function plusSlides0(n0) {
		showSlides0(slideIndex0 += n0);
	}

	function currentSlide0(n0) {
		showSlides0(slideIndex0 = n0);
	}

	function showSlides0(n0) {
		var i0;
		var slides0 = document.getElementsByClassName("mySlides0");
		var dots0 = document.getElementsByClassName("dot0");
		if (n0 > slides0.length) {
			slideIndex0 = 1
		}
		if (n0 < 1) {
			slideIndex0 = slides0.length
		}
		for (i0 = 0; i0 < slides0.length; i0++) {
			slides0[i0].style.display = "none";
		}
		for (i0 = 0; i0 < dots0.length; i0++) {
			dots0[i0].className = dots0[i0].className.replace(" active", "");
		}
		slides0[slideIndex0 - 1].style.display = "block";
		dots0[slideIndex0 - 1].className += " active";
	}

	// 연습 배너 8 카페

	var slideIndex8 = 1;
	showSlides8(slideIndex8);

	function plusSlides8(n8) {
		showSlides8(slideIndex8 += n8);
	}

	function currentSlide8(n8) {
		showSlides8(slideIndex8 = n8);
	}

	function showSlides8(n8) {
		var i8;
		var slides8 = document.getElementsByClassName("mySlides8");
		var dots8 = document.getElementsByClassName("dot8");
		if (n8 > slides8.length) {
			slideIndex8 = 1
		}
		if (n8 < 1) {
			slideIndex8 = slides8.length
		}
		for (i8 = 0; i8 < slides8.length; i8++) {
			slides8[i8].style.display = "none";
		}
		for (i8 = 0; i8 < dots8.length; i8++) {
			dots8[i8].className = dots8[i8].className.replace(" active", "");
		}
		slides8[slideIndex8 - 1].style.display = "block";
		dots8[slideIndex8 - 1].className += " active";
	}

	//16 공원
	var slideIndex16 = 1;
	showSlides16(slideIndex16);

	function plusSlides16(n16) {
		showSlides16(slideIndex16 += n16);
	}

	function currentSlide16(n16) {
		showSlides16(slideIndex16 = n16);
	}

	function showSlides16(n16) {
		var i16;
		var slides16 = document.getElementsByClassName("mySlides16");
		var dots16 = document.getElementsByClassName("dot16");
		if (n16 > slides16.length) {
			slideIndex16 = 1
		}
		if (n16 < 1) {
			slideIndex16 = slides16.length
		}
		for (i16 = 0; i16 < slides16.length; i16++) {
			slides16[i16].style.display = "none";
		}
		for (i16 = 0; i16 < dots16.length; i16++) {
			dots16[i16].className = dots16[i16].className
					.replace(" active", "");
		}
		slides16[slideIndex16 - 1].style.display = "block";
		dots16[slideIndex16 - 1].className += " active";
	}

	//24 병원
	var slideIndex24 = 1;
	showSlides24(slideIndex24);

	function plusSlides24(n24) {
		showSlides24(slideIndex24 += n24);
	}

	function currentSlide24(n24) {
		showSlides24(slideIndex24 = n24);
	}

	function showSlides24(n24) {
		var i24;
		var slides24 = document.getElementsByClassName("mySlides24");
		var dots24 = document.getElementsByClassName("dot24");
		if (n24 > slides24.length) {
			slideIndex24 = 1
		}
		if (n24 < 1) {
			slideIndex24 = slides24.length
		}
		for (i24 = 0; i24 < slides24.length; i24++) {
			slides24[i24].style.display = "none";
		}
		for (i24 = 0; i24 < dots24.length; i24++) {
			dots24[i24].className = dots24[i24].className
					.replace(" active", "");
		}
		slides24[slideIndex24 - 1].style.display = "block";
		dots24[slideIndex24 - 1].className += " active";
	}

	/* 1 최근 본 게시글 */

	var slideIndex = 1;
	showSlides(slideIndex);

	function plusSlides(n) {
		showSlides(slideIndex += n);
	}

	function currentSlide(n) {
		showSlides(slideIndex = n);
	}

	function showSlides(n) {
		var i;
		var slides = document.getElementsByClassName("mySlides");
		var dots = document.getElementsByClassName("dot");
		if (n > slides.length) {
			slideIndex = 1
		}
		if (n < 1) {
			slideIndex = slides.length
		}
		for (i = 0; i < slides.length; i++) {
			slides[i].style.display = "none";
		}
		for (i = 0; i < dots.length; i++) {
			dots[i].className = dots[i].className.replace(" active", "");
		}
		slides[slideIndex - 1].style.display = "block";
		dots[slideIndex - 1].className += " active";
	}
</script>


