<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">

<!-- 카카오톡 상담 -->
</script>
</head>
<body>
 <!-- Masthead-->
<header class="masthead">
<div style="float:right;"
  id="kakao-talk-channel-chat-button"
  data-channel-public-id="_zfHRxj"
  data-title="question"
  data-size="small"
  data-color="yellow"
  data-shape="pc"
  data-support-multiple-densities="true"
></div>
  	 

    <div class="container px-4 px-lg-5 h-100">
        <div class="row gx-4 gx-lg-5 h-100 align-items-center justify-content-center text-center">
            <div class="col-lg-8 align-self-end">
                <h1 class="text-white font-weight-bold">사지말고 입양하세요.</h1>
                <hr class="divider" />
            </div>
            <div class="col-lg-8 align-self-baseline">
                <p class="text-white-75 mb-5">Help us give a happy home to thousands of stray and abandoned dogs. Don't buy a pet, adopt one!</p>
                <a class="btn btn-primary btn-xl" href="#about">Find Out More</a>
            </div>
        </div>
    </div>
</header>




 <!-- About-->
	<section class="page-section bg-primary" id="about">
		<div class="container px-4 px-lg-5">
			<div class="row gx-4 gx-lg-5 justify-content-center">
				<div class="col-lg-8 text-center">
					<h2 class="text-white mt-0">센터위치</h2>
					<hr class="divider divider-light" />
					<div id="googleMap" style="width: 600px; height: 400px; margin:0 auto;"></div>
					<script>
						function myMap() {
							var mapOptions = {
								center : new google.maps.LatLng(
										35.86911582324232, 128.59325935232815),
								level : 3,
								zoom : 19
							};

							var map = new google.maps.Map(document.getElementById("googleMap"), mapOptions);
							
						    var subMarkerPoint = { lat: 35.86911582324232, lng: 128.59325935232815};
							var subMarker = new google.maps.Marker({
							      position: subMarkerPoint,
							      map: map,
							      label:"데려가줘",
							      icon: {
							        url: "http://maps.google.com/mapfiles/ms/icons/red-dot.png",
							        labelOrigin: new google.maps.Point(15, -10),
							        anchor: new google.maps.Point(-10,40)
							      }
							    });
							}
						
					</script>
					<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAD2hrjGpgsEXIDgmQ2lk2h7-eEBH-XiRc&callback=myMap"></script>
 					<br>
 					
					<p class="text-white-75 mb-4">오시는길</p>
 					<p class="text-white-75">주     소 : 대구광역시 중구 중앙대로 403 (남일동 135-1, 5층) 태왕 아너스 타워</p>
					<p class="text-white-75">버  스(도보 1~2분)</p>
					<p class="text-white-75">- 약령시앞 : 204, 304, 349, 401, 410-1, 503, 518, 650, 706, 730, 909, 급행2, 북구2</p>
					<p class="text-white-75">- 약령시건너(동성로입구) : 204, 304, 349, 401, 410, 503, 518, 650, 706, 730, 급행2</p>
					<p class="text-white-75">전화번호 : 053-421-2460</p>
					<p class="text-white-75">F  A  X : 053-356-3939</p>
 					<br> <a class="btn btn-light btn-xl" target="_blank"
						href="https://www.google.co.kr/maps/place/%EC%98%88%EB%8B%B4%EC%A7%81%EC%97%85%EC%A0%84%EB%AC%B8%ED%95%99%EA%B5%90/data=!3m1!4b1!4m5!3m4!1s0x3565e3c264a0f67b:0x6f6af951f8677f92!8m2!3d35.8690802!4d128.5932219?hl=ko">찾아가기</a>
				</div>
			</div>
		</div>
	</section>
	<!-- Services-->
<section class="page-section" id="services">
    <div class="container px-4 px-lg-5">
        <h2 class="text-center mt-0">At Your Service</h2>
        <hr class="divider" />
        <div class="row gx-4 gx-lg-5">
        
          
            <div class="col-lg-3 col-md-6 text-center">
                <div class="mt-5">
                    <div class="mb-2"><i class="bi-gem fs-1 text-primary"></i></div>
                    <h3 class="h4 mb-2">My page</h3>

                    <a class="text-muted mb-0" href="memberMyPage.do">내 정보 보기</a><br>
                    <a class="text-muted mb-0" href="memberAdopt.do">나의 입양 신청</a><br>
                    <a class="text-muted mb-0" href="#">나의 봉사참여 신청현황</a>
                </div>
            </div>
           
            <div class="col-lg-3 col-md-6 text-center">
                <div class="mt-5">
                    <div class="mb-2"><i class="bi-laptop fs-1 text-primary"></i></div>
                    <h3 class="h4 mb-2">Adopt Page</h3>
                    <a class="text-muted mb-0" href="petListView.do">동물 보러 가기</a><br>
                    <a class="text-muted mb-0" href="adoptReviewList.do">입양 동물 후기</a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 text-center">
                <div class="mt-5">
                    <div class="mb-2"><i class="bi-globe fs-1 text-primary"></i></div>
                    <h3 class="h4 mb-2">Volunteer</h3>
                    <a class="text-muted mb-0" href="calendar.do">봉사 일정</a><br>
                    <a class="text-muted mb-0" href="volReviewList.do">봉사 후기</a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 text-center">
                <div class="mt-5">
                    <div class="mb-2"><i class="bi-heart fs-1 text-primary"></i></div>
                    <h3 class="h4 mb-2">Community</h3>
                    <a class="text-muted mb-0" href="noticeList.do">공지사항</a><br>
                    <a class="text-muted mb-0" href="qnaBoardList.do">Q&A</a>
                </div>
            </div>
            

              
             <c:if test="${author =='admin'}">
             <div class="col-lg-3 col-md-6 text-center">
                <div class="mt-5">
                    <div class="mb-2"><i class="bi-heart fs-1 text-primary"></i></div>
                    <h3 class="h4 mb-2">관리자페이지</h3>
                    <a class="text-muted mb-0" href="memberList.do">회원 리스트</a><br>
                    <a class="text-muted mb-0" href="adoptList.do">입양신청 내역</a>
                </div>
            </div>
         </c:if>
            
        </div>
    </div>
</section>

     </body>
     
<!-- 카카오톡 상담 -->     
<script>
  window.kakaoAsyncInit = function() {
    Kakao.Channel.createChatButton({
      container: '#kakao-talk-channel-chat-button',
    });
  };

  (function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = 'https://developers.kakao.com/sdk/js/kakao.channel.min.js';
    fjs.parentNode.insertBefore(js, fjs);
  })(document, 'script', 'kakao-js-sdk');
</script>

</html>