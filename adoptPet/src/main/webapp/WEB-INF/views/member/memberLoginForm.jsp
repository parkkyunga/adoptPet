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





</body>
</html>