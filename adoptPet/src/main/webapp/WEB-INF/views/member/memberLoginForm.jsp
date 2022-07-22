<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
<section class="page-section" id="contact">
            <div class="container px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-lg-8 col-xl-6 text-center">
                        <h2 class="mt-0">LOG IN!</h2>
                        <hr class="divider" />
                    </div>
                </div>
                <div class="row gx-4 gx-lg-5 justify-content-center mb-5">
                    <div class="col-lg-6">
               
                <form id="frm" action="memberLogin.do" method="post">
                    <!-- Name input-->
                    <div class="form-floating mb-3">
                        <input class="form-control" type="text" id="memberId" name="memberId" placeholder="Enter your ID…” data-sb-validations="required" />
                        <label for="name">ID</label>
                        <div class="invalid-feedback" data-sb-feedback="name:required">ID is required.</div>
                    </div>

 <div class="form-floating mb-3">
                        <input class="form-control"type="password" id="memberPassword" name="memberPassword" placeholder="Enter your ID…” data-sb-validations="required" />
                        <label for="name">PASSWORD</label>
                        <div class="invalid-feedback" data-sb-feedback="name:required"> PASSWORD is required.</div>
                    </div>

                    <!-- Submit Button-->
          <div class="d-grid">
<input class="btn btn-primary btn-l" type="submit" value="로그인">&nbsp;
<input class="btn btn-primary btn-l" type="reset" value="취 소">&nbsp;
<input class="btn btn-primary btn-l" type="button" value="홈 가기" onclick="location.href='main.do'">

	
	</div>
                        </form>
                    </div>
                </div>
                
                    </div>
                </div>
            </div>
        </section>






<!-- 카카오 로그인 버튼 -->
   <a id="btn-kakao-login" href="javascript:void(0)" onclick="kakaoLogin();">
      <img src="//k.kakaocdn.net/14/dn/btroDszwNrM/I6efHub1SN5KCJqLm1Ovx1/o.jpg" width="200" alt="카카오 로그인 버튼"/>
   </a>
   <form id="kakaoForm" method="post" action="kakaoLogin.do">
      <input type="hidden" name="email"/>
      <input type="hidden" name="name"/>
   </form>
<!--    <ul> -->
<!--       <li onclick="kakaoLogout();"> -->
<!--          <a href="javascript:void(0)"> -->
<!--              <span>카카오 로그아웃</span> -->
<!--          </a> -->
<!--       </li> -->
<!--    </ul> -->

<!-- 카카오 스크립트 -->
   <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
   <script>
   Kakao.init('8979f5b92eaf5997a6ea3ade6a7e65f1'); //발급받은 키 중 javascript키를 사용해준다.
   //카카오로그인
   function kakaoLogin() {
       Kakao.Auth.login({
         success: function (response) {
           Kakao.API.request({ // 사용자 정보 가져오기
             url: '/v2/user/me',
             success: function (response) { 
                var account = response.kakao_account;
                  $('#kakaoForm input[name=email]').val(account.email);
               $('#kakaoForm input[name=name]').val(account.profile.nickname);
               // 사용자 정보가 포함된 폼을 서버로 제출한다.
               document.querySelector('#kakaoForm').submit();
             },
             fail: function (error) {
               console.log(error)
             },
           })
         },
         fail: function (error) {
           console.log(error)
         },
       })
     }
   //카카오로그아웃 ()
   function kakaoLogout() {
       if (Kakao.Auth.getAccessToken()) {
         Kakao.API.request({
           url: '/v1/user/unlink',
           success: function (response) {
              console.log(response)
           },
           fail: function (error) {
             console.log(error)
           },
         })
         Kakao.Auth.setAccessToken(undefined)
       }
     }  
   </script>

</body>
</html>