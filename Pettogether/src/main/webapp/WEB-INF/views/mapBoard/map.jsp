<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <section>
    	<!-- kakao api key -->
    	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=fe9c4f49446ea70ac05193ca8f70f694&libraries=services"></script>
    	
    	
        <h1 style="text-align: center; font-size: 50px;">Map Point!</h1>
        <div style="text-align: center;">
            <select name="" id="">
                <option value="">서울특별시</option>
                <option value="">인천광역시</option>
                <option value="">경기도</option>
                <option value="">충청도</option>
            </select>
        </div>
        <br/>
        <div id = "boxmap">
        	<div id="map" ></div>
        </div>
    </section>


    <script>
        var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
            mapOption = { 
                center: new kakao.maps.LatLng(37.54699, 127.09598), // 지도의 중심좌표
                level: 3 // 지도의 확대 레벨
            };

        // 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
        var map = new kakao.maps.Map(mapContainer, mapOption);        

        var imageSrc = 'img/cafe.jpg', // 마커이미지의 주소입니다    
            imageSize = new kakao.maps.Size(30, 40), // 마커이미지의 크기입니다
            imageOption = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
            
        // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
        var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption),
            markerPosition = new kakao.maps.LatLng(37.54699, 127.09598); // 마커가 표시될 위치입니다

        // 마커를 생성합니다
        var marker = new kakao.maps.Marker({
            position: markerPosition, 
            image: markerImage // 마커이미지 설정 
        });

        // 마커가 지도 위에 표시되도록 설정합니다
        marker.setMap(map);

        // 커스텀 오버레이에 표시할 컨텐츠 입니다
        // 커스텀 오버레이는 아래와 같이 사용자가 자유롭게 컨텐츠를 구성하고 이벤트를 제어할 수 있기 때문에
        // 별도의 이벤트 메소드를 제공하지 않습니다 
        var content = '<div class="wrap">' + 
                    '    <div class="info">' + 
                    '        <div class="title">' + 
                    '            카카오 스페이스닷원' + 
                    '            <div class="close" onclick="closeOverlay()" title="닫기"></div>' + 
                    '        </div>' + 
                    '        <div class="body">' + 
                    '            <div class="img">' +
                    '                <img src="img/pet1.png" width="73" height="70">' +
                    '           </div>' + 
                    '            <div class="desc">' + 
                    '                <div class="ellipsis">제주특별자치도 제주시 첨단로 242</div>' + 
                    '                <div class="jibun ellipsis">(우) 63309 (지번) 영평동 2181</div>' + 
                    '                <div><a href="https://www.kakaocorp.com/main" target="_blank" class="link">홈페이지</a></div>' + 
                    '            </div>' + 
                    '        </div>' + 
                    '    </div>' +    
                    '</div>';

        var overlay = new kakao.maps.CustomOverlay({
            content: content,
            map: map,
            position: new kakao.maps.LatLng(37.54699, 127.09598)       
        });

        // 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
        kakao.maps.event.addListener(marker, 'click', function() {
            overlay.setMap(map);
        });

        // 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
        function closeOverlay() {
            overlay.setMap(null);     
        }


    </script>
</body>
</html>