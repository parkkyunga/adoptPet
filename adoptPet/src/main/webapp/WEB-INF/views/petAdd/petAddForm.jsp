<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입양동물 등록 폼</title>
</head>
<body>
	<section class="page-section" id="contact">
		<div class="container px-4 px-lg-5">
			<div class="row gx-4 gx-lg-5 justify-content-center">
				<div class="col-lg-8 col-xl-6 text-center">
					<h2 class="mt-0">INSERT&nbsp;&nbsp; PET&nbsp;&nbsp; INFORMATION</h2>
					<hr class="divider" />
				</div>
			</div>
			<div class="row gx-4 gx-lg-5 justify-content-center mb-5">
				<div class="col-lg-6">



					<form id="contactForm" action="petAddInsert.do" method="post">
						<!-- Name input-->
						<div class="form-floating mb-3">
							<input class="form-control" type="text" id="petAddName"
								name="petAddName" value="" /> <label for="petAddName">동물이름</label>
						</div>

						<div class="form-floating mb-3">
							<input class="form-control" type="text" id="petAddAge"
								name="petAddAge" value="" /> <label for="petAddAge">동물나이(대략)</label>
						</div>

						<div class="form-floating mb-3">
							<select class="form-control" id="petAddGender" name="petAddGender" >
								<option value="남자">--선택--</option>
								<option value="남자">남자</option>
								<option value="여자">여자</option>
							</select> <label for="petAddGender">동물성별</label>
						</div>
						
						<div class="form-floating mb-3">
							<input class="form-control" type="text" id="petAddWeight"
								name="petAddWeight" value="" /> <label for="name">동물체중(대략)</label>
						</div>
						
						<div class="form-floating mb-3">
							<input class="form-control" type="text" id="petAddHealth"
								name="petAddHealth" value="" /> <label for="name">동물건강상태</label>
						</div>
						
						<div class="form-floating mb-3">
							<input class="form-control" type="text" id="petAddAdoptState"
								name="petAddAdoptState" value="입양대기" readonly /> <label
								for="petAddAdoptState">입양여부</label>
						</div>
						
						<div class="form-floating mb-3">
							<select class="form-control" id="petAddType" name="petAddType" >
								<option value="강아지">--선택--</option>
								<option value="강아지">강아지</option>
								<option value="고양이">고양이</option>
							</select> <label for="petAddType">동물유형</label>
						</div>
							
						<!-- Submit Button-->
						<div class="d-grid">
							<button style="margin-top: 15px" class="btn btn-primary btn-xl" id="submitButton"
								type="submit">등록</button>&nbsp;&nbsp;
							<button class="btn btn-primary btn-xl" id="resetButton"
								type="reset">리셋</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>

</body>
</html>