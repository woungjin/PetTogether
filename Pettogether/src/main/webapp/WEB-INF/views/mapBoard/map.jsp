<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <section>
        <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=fe9c4f49446ea70ac05193ca8f70f694&libraries=services"></script>              
            <div style="text-align: center;">
            	<img src="${pageContext.request.contextPath }/resources/img/mapBoard/map.png">
            </div>
            <div style="width:500px;height:50px; margin:0 auto; overflow: hidden; ">
            	<div style="float:left; width:300px; margin-right: 48px">
            		<img style="width:300px; " src="${pageContext.request.contextPath }/resources/img/mapBoard/petRecom.png">
            	</div>
            	<div style=" float:left; margin-top: 18px">	            
		            <select id="category" >
		            	<option value="선택">선택</option>
						<option value="공원">공원</option>
		                <option value="카페">카페</option>
		                <option value="병원">병원</option>
		                <option value="호텔">호텔</option>
		            </select>
	            </div>
            </div>
            <br/>
            <div class="map_wrap">
                <div id="map" style="border: 1px solid #777;">
                    <div id="menu_wrap" class="bg_white" >
                        <div class="option">
                            <div>
                                <form onsubmit="searchPlaces(); return false;">
                                    	키워드 : <input type="text"  id="keyword" size="15"> 
                                    <button type="submit">검색하기</button> 
                                </form>
                            </div>
                        </div>
                        <hr>
                        <ul id="placesList"></ul>
                        <div id="pagination"></div>
                    </div>
                </div>
            </div>           
        
    </section>

    <script>      
         // 마커를 담을 배열
         var markers = [];
         var markerArr = []; 
         var overlayArr = [];         
         var dataArr = [];

        // 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성
        var infowindow = new kakao.maps.InfoWindow({zIndex:1});        

        var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
            mapOption = { 
                center: new kakao.maps.LatLng(37.55512, 126.97060), // 지도의 중심좌표
                level: 3 // 지도의 확대 레벨
            };

        // 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
        var map = new kakao.maps.Map(mapContainer, mapOption);        

        // 주소-좌표 변환 객체를 생성합니다
        var geocoder = new kakao.maps.services.Geocoder();        
        
        //줌 컨트롤
        var zoomControl = new kakao.maps.ZoomControl(); 
        map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT); 

        // 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
        var mapTypeControl = new kakao.maps.MapTypeControl();
        // 지도 타입 컨트롤을 지도에 표시합니다
        map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

        // ======================= API ========================================      
        var Apiarr = []; //api의 데이터중 구분한 데이터를 담는곳
        /* var Overlayarr = [];         
        var Markerarr = [];  */   
        var category = document.querySelector('#category');
        category.addEventListener("change", function(){
            var category = event.target.value
            console.log(category)
            
            
            $.ajax({
    		type: "POST",
    		url: "categoryCheck",
    		data: JSON.stringify({"category": category}),
    		dataType: "json",
    		contentType: "application/json; charset=utf-8",
    		success: function(data){     			    			
    			
    			markerArr.forEach(function (marker) { marker.setMap(null); });
    			markerArr.length = 0 // 마커 배열 초기화
    			overlayArr.forEach(function (overlay) { overlay.setMap(null); });
    			overlayArr.length = 0 // 오버레이 배열 초기화
    			
    			if(data.length == 0){
    				//선택을 선택시 중심이동 올 초기화
    				panTo();
    				removeMarker();
    			}else{						
				
				for(var i = 0; i < data.length; i ++){
                	Apiarr[i] = data[i]
                }                

                // 주소로 좌표를 검색, 반복문 활용 마커 여러개 찍기                 
                var bounds = new kakao.maps.LatLngBounds();                
                Apiarr.forEach(function(Apiarr, index){  
                	
                    //마커이미지 설정
                    if(index < 15){
	                	var imageSrc = '${pageContext.request.contextPath }/resources/img/mapBoard/marker.png', //    
	    	            imageSize = new kakao.maps.Size(40, 40), 
	    	            imageOption = {offset: new kakao.maps.Point(20, 69)};                     	
                    }else{
                    	var imageSrc = '${pageContext.request.contextPath }/resources/img/mapBoard/marker'+ index +'.png',    
	    	            imageSize = new kakao.maps.Size(60, 50), 
	    	            imageOption = {offset: new kakao.maps.Point(31, 69)};
                    }
                    
                    geocoder.addressSearch(Apiarr.address, function(result, status) {           
                      
		                // 정상적으로 검색이 완료됐으면 
		                if (status === kakao.maps.services.Status.OK) {
		                	
		                    var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
		                    bounds.extend(coords)
		
		                    // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
		                    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption),
		                    markerPosition = new kakao.maps.LatLng(result[0].y, result[0].x);
		
		                    // 결과값으로 받은 위치를 마커로 표시합니다
		                    var marker = new kakao.maps.Marker({
		                    	map : map,
		                        position: coords,
		                        image: markerImage
		                    });
	                    
		                    markerArr[index] = marker;                    
		                   
		
		                    // 커스텀 오버레이에 표시할 컨텐츠  
		                    // content를 문자열로 만들면 이벤트 등록이 불가능 element 이벤트리스너 기능이용       
		                    var content = document.createElement('div');
		                    content.className = 'wrap';
		                    var info = document.createElement("div");
		                    var title = document.createElement("div");
		                    var close = document.createElement("div");
		                    var body = document.createElement("div");
		                    var image = document.createElement("div");
		                    var desc = document.createElement("div");
		                    var ellipsis = document.createElement("div");
		                    var jibun = document.createElement("div");
		                    var link = document.createElement("div");
		                    var a = document.createElement("a");
		                    var img = document.createElement("img");
		                    content.appendChild(info).className = 'info';          
		                    info.appendChild(title).className = 'title';          
		                    title.innerHTML = Apiarr.title;
		                    title.appendChild(close).className = 'close';   
		                    close.onclick = function(){
		                    overlay.setMap(null); 
		                    }       
		                    close.title = '닫기';            
		                    info.appendChild(body).className = "body";          
		                    body.appendChild(image).className = "img";		                    
		                    console.log(Apiarr.bno)		                    		                    	
		                    image.appendChild(img).src = '${pageContext.request.contextPath }/resources/img/starboard/'+ Apiarr.bno + '.jpg';		                   
		                    img.width = '73';
		                    img.height = '70';
		                    body.appendChild(desc).className = 'desc';          
		                    desc.appendChild(ellipsis).className = 'ellipsis';
		                    ellipsis.innerHTML = Apiarr.address;
		                    desc.appendChild(jibun).className = 'jibun';
		                    
		                    if(Apiarr.postal == null){
		                    	jibun.innerHTML = '(우)';
		                    }else{
			                    jibun.innerHTML = '(우)' + Apiarr.postal;		                    	
		                    }
		                    
		                    desc.appendChild(link)
		                    link.appendChild(a).className = 'link';
		                    a.href = '${pageContext.request.contextPath }';
		                    a.innerHTML = '홈페이지';         
		                    
		                    var iwContent = document.createElement('div');
		                    iwContent.style = 'padding:5px;';
		                    iwContent.innerHTML = Apiarr.title;
		                    
		                    var infowindowOver = new kakao.maps.InfoWindow({
		                        content : iwContent
		                    });
		                    
		                    var overlay = new kakao.maps.CustomOverlay({
		                        content: content,                                                
		                        zIndex:1,                        
		                        position: new kakao.maps.LatLng(result[0].y, result[0].x)                        
		                    });                    
		                        
		                    overlayArr[index] = overlay		                    	                    
		                        
		                    // 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
		                    kakao.maps.event.addListener(markerArr[index], 'click', function() {
		                        overlayArr[index].setMap(map);                        
		                    }); 
		                    
		                 	// 마커에 마우스오버 이벤트를 등록합니다
		                    kakao.maps.event.addListener(markerArr[index], 'mouseover', function() {
		                      	// 마커에 마우스오버 이벤트가 발생하면 인포윈도우를 마커위에 표시합니다
		                        infowindowOver.open(map, markerArr[index]);
		                    });
		                	 // 마커에 마우스아웃 이벤트를 등록합니다
		                    kakao.maps.event.addListener(markerArr[index], 'mouseout', function() {
		                        // 마커에 마우스아웃 이벤트가 발생하면 인포윈도우를 제거합니다
		                        infowindowOver.close();
		                    });
		                 	
		                        
		                    // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
		                    map.setBounds(bounds);
		                    } 
		                    }); 
		                }); 
    			}
				
    		},
    		error: function(status, error){}
    		
    		})            
            
        })	
        
        // 셀렉트 선택을 선택시 올 초기화 중심이동
        function panTo() {
		    
		    var moveLatLon = new kakao.maps.LatLng(37.55512, 126.97060);
		    var level = map.getLevel();
		    
		    map.setLevel(level = 3);
		    map.panTo(moveLatLon); 		    
		    
		};           
        
        
        //========= 검색 ================      
        // 장소 검색 객체를 생성
        var ps = new kakao.maps.services.Places(map); 

        // 키워드로 장소를 검색합니다
        searchPlaces();

        // 키워드 검색을 요청하는 함수입니다
        function searchPlaces() {
            var keyword = document.getElementById('keyword').value;            

            if (!keyword.replace(/^\s+|\s+$/g, '')) {                
                return false;
            }

            // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
            ps.keywordSearch( keyword, placesSearchCB); 
            }

            // 키워드 검색 완료 시 호출되는 콜백함수 입니다
        function placesSearchCB(data, status, pagination) {
            if (status === kakao.maps.services.Status.OK) {

                // 정상적으로 검색이 완료됐으면
                // 검색 목록과 마커를 표출합니다
                displayPlaces(data);

                // 페이지 번호를 표출합니다
                displayPagination(pagination);

            } else if (status === kakao.maps.services.Status.ZERO_RESULT) {
                    
                alert('검색 결과가 존재하지 않습니다.');
                return;

            } else if (status === kakao.maps.services.Status.ERROR) {

                alert('검색 결과 중 오류가 발생했습니다.');
                return;

            }
        }

        // 검색 결과 목록과 마커를 표출하는 함수입니다
        function displayPlaces(places) {

        var listEl = document.getElementById('placesList'), 
        menuEl = document.getElementById('menu_wrap'),
        fragment = document.createDocumentFragment(), 
        bounds = new kakao.maps.LatLngBounds(), 
        listStr = '';

        // 검색 결과 목록에 추가된 항목들을 제거합니다
        removeAllChildNods(listEl);

        // 지도에 표시되고 있는 마커를 제거합니다
        removeMarker();

        for ( var i=0; i<places.length; i++ ) {
            console.log(places[i].y)

            // 마커를 생성하고 지도에 표시합니다
            var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
                marker = addMarker(placePosition, i), 
                itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다

            // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
            // LatLngBounds 객체에 좌표를 추가합니다
            bounds.extend(placePosition);

            // 마커와 검색결과 항목에 mouseover 했을때
            // 해당 장소에 인포윈도우에 장소명을 표시합니다
            // mouseout 했을 때는 인포윈도우를 닫습니다
            (function(marker, title) {
                kakao.maps.event.addListener(marker, 'mouseover', function() {
                    displayInfowindow(marker, title);
                });

                kakao.maps.event.addListener(marker, 'mouseout', function() {
                    infowindow.close();
                });

                itemEl.onmouseover =  function () {
                    displayInfowindow(marker, title);
                };

                itemEl.onmouseout =  function () {
                    infowindow.close();
                };
            })(marker, places[i].place_name);

            fragment.appendChild(itemEl);
        }

        // 검색결과 항목들을 검색결과 목록 Elemnet에 추가합니다
        listEl.appendChild(fragment);
        menuEl.scrollTop = 0;

        // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
        map.setBounds(bounds);
        }

        // 검색결과 항목을 Element로 반환하는 함수입니다
        function getListItem(index, places) {

        var el = document.createElement('li'),
        itemStr = '<span class="markerbg marker_' + (index+1) + '"></span>' +
                    '<div class="Searchinfo">' +
                    '   <h5>' + places.place_name + '</h5>';

        if (places.road_address_name) {
            itemStr += '    <span>' + places.road_address_name + '</span>' +
                        '   <span class="jibun gray">' +  places.address_name  + '</span>';
        } else {
            itemStr += '    <span>' +  places.address_name  + '</span>'; 
        }
                    
        itemStr += '  <span class="tel">' + places.phone  + '</span>' +
                    '</div>';           

        el.innerHTML = itemStr;
        el.className = 'item';

        return el;
        }

        // 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
        function addMarker(position, idx, title) {
        var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
            imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기
            imgOptions =  {
                spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
                spriteOrigin : new kakao.maps.Point(0, (idx*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
                offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
            },
            markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
                marker = new kakao.maps.Marker({
                position: position, // 마커의 위치
                image: markerImage 
            });

        marker.setMap(map); // 지도 위에 마커를 표출합니다
        markers.push(marker);  // 배열에 생성된 마커를 추가합니다

        return marker;
        }

        // 지도 위에 표시되고 있는 마커를 모두 제거합니다
        function removeMarker() {
        for ( var i = 0; i < markers.length; i++ ) {
            markers[i].setMap(null);
        }   
        markers = [];
        }

        // 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
        function displayPagination(pagination) {
        var paginationEl = document.getElementById('pagination'),
            fragment = document.createDocumentFragment(),
            i; 

        // 기존에 추가된 페이지번호를 삭제합니다
        while (paginationEl.hasChildNodes()) {
            paginationEl.removeChild (paginationEl.lastChild);
        }

        for (i=1; i<=pagination.last; i++) {
            var el = document.createElement('a');
            el.href = "#";
            el.innerHTML = i;

            if (i===pagination.current) {
                el.className = 'on';
            } else {
                el.onclick = (function(i) {
                    return function() {
                        pagination.gotoPage(i);
                    }
                })(i);
            }

            fragment.appendChild(el);
        }
        paginationEl.appendChild(fragment);
        }

        // 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
        // 인포윈도우에 장소명을 표시합니다
        function displayInfowindow(marker, title) {
        var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';

        infowindow.setContent(content);
        infowindow.open(map, marker);
        }

        // 검색결과 목록의 자식 Element를 제거하는 함수입니다
        function removeAllChildNods(el) {   
        while (el.hasChildNodes()) {
            el.removeChild (el.lastChild);
            }
        }   
       
        
  </script>
</body>
</html>