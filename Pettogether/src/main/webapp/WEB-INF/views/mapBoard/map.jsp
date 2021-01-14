<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <section>
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
        <div id="map" ></div>
        
    </section>


    <script>
      var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
          mapOption = { 
              center: new kakao.maps.LatLng(37.583597, 127.082697), // 지도의 중심좌표
              level: 3 // 지도의 확대 레벨
          };

      // 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
      var map = new kakao.maps.Map(mapContainer, mapOption); 
      
      var imageSrc = 'img/cafe.jpg', // 마커이미지의 주소입니다    
          imageSize = new kakao.maps.Size(30, 40), // 마커이미지의 크기입니다
          imageOption = {offset: new kakao.maps.Point(15, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
      
      // 주소-좌표 변환 객체를 생성합니다
      var geocoder = new kakao.maps.services.Geocoder();
      
      // 주소로 좌표를 검색합니다
      geocoder.addressSearch('서울특별시 중랑구 면목동 156-23', function(result, status) {

      // 정상적으로 검색이 완료됐으면 
      if (status === kakao.maps.services.Status.OK) {

          var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

          // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
          var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption),
          markerPosition = new kakao.maps.LatLng(result[0].y, result[0].x);

          // 결과값으로 받은 위치를 마커로 표시합니다
          var marker = new kakao.maps.Marker({
              map: map,
              position: coords,
              image: markerImage
          });

          // 커스텀 오버레이에 표시할 컨텐츠         
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
          title.innerHTML = '씨유 중랑센트럴아이파크점';
          title.appendChild(close).className = 'close';   
          close.onclick = function(){
            overlay.setMap(null); 
          }       
          close.title = '닫기';            
          info.appendChild(body).className = "body";          
          body.appendChild(image).className = "img";
          image.appendChild(img).src = 'img/pet1.png';
          img.width = '73';
          img.height = '70';
          body.appendChild(desc).className = 'desc';          
          desc.appendChild(ellipsis).className = 'ellipsis';
          ellipsis.innerHTML = '서울특별시 중랑구 면목동 156-23';
          desc.appendChild(jibun).className = 'jibun';
          jibun.innerHTML = '(우) 131821 (지번) 면목동 156-23';
          desc.appendChild(link)
          link.appendChild(a).className = 'link';
          a.href = 'https://www.kakaocorp.com/main';
          a.innerHTML = '홈페이지';         

          var overlay = new kakao.maps.CustomOverlay({
              content: content,
              map: map,
              position: new kakao.maps.LatLng(result[0].y, result[0].x)       
          });

          // 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
          kakao.maps.event.addListener(marker, 'click', function() {
              overlay.setMap(map);
          });          
          
          // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
          map.setCenter(coords);
        } 

      });     


  </script>
</body>
</html>