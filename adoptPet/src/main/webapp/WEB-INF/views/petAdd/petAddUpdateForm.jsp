<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입양동물 수정 폼</title>
</head>
<body>

	<section class="page-section" id="contact">&nbsp;
		<div class="container px-4 px-lg-5">
			<div class="row gx-4 gx-lg-5 justify-content-center">
				<div class="col-lg-8 col-xl-6 text-center">
					<h2 class="mt-0">EDIT&nbsp;&nbsp;PET&nbsp;&nbsp;INFORMATION </h2>
					<hr class="divider" />
				</div>
			</div>
			<div class="row gx-4 gx-lg-5 justify-content-center mb-5">
				<div class="col-lg-6">
				
	<form id="contactForm" action="petAddUpdateForm.do" method="post">
			  
		<!-- Name input-->
		<input type="hidden" id="petAddNo" name="petAddNo" value="${petAddVO.petAddNo}"><br>
		<div class="form-floating mb-3">
			<input class="form-control" type="text" id="petAddName"
			name="petAddName" value="${petAddVO.petAddName}" /> <label for="petAddName">동물이름</label>
		</div>
			  
		<div class="form-floating mb-3">
			<input class="form-control" type="text" id="petAddAge"
			name="petAddAge" value="${petAddVO.petAddAge}" /> <label for="petAddAge">동물나이(대략)</label>
		</div>	  
			  
		<div class="form-floating mb-3">
			<select class="form-control" id="petAddGender" name="petAddGender" >
				<option value="남자">--선택--</option>
				<option value="남자" <c:if test="${petAddVO.petAddGender eq '남자'}">selected</c:if>>남자</option>
				<option value="여자" <c:if test="${petAddVO.petAddGender eq '여자'}">selected</c:if>>여자</option>
			</select> <label for="petAddGender">동물성별</label>
		</div>	 
		
		<div class="form-floating mb-3">
			<input class="form-control" type="text" id="petAddWeight"
			name="petAddWeight" value="${petAddVO.petAddWeight}" /> <label for="name">동물체중(대략)</label>
		</div> 
		
		<div class="form-floating mb-3">
			<input class="form-control" type="text" id="petAddHealth"
			name="petAddHealth" value="${petAddVO.petAddHealth}" /> <label for="name">동물건강상태</label>
		</div>
		
		<div class="form-floating mb-3">
			<select class="form-control" id="petAddAdoptState" name="petAddAdoptState" >
				<option value="입양대기">--선택--</option>
				<option value="입양대기" <c:if test="${petAddVO.petAddAdoptState eq '입양대기'}">selected</c:if>>입양대기</option>
				<option value="입양승인" <c:if test="${petAddVO.petAddAdoptState eq '입양승인'}">selected</c:if>>입양승인</option>
				<option value="입양불가" <c:if test="${petAddVO.petAddAdoptState eq '입양불가'}">selected</c:if>>입양불가</option>
			</select> <label for="petAddAdoptState">입양여부</label>
		</div>
		
		<div class="form-floating mb-3">
			<select class="form-control" id="petAddType" name="petAddType" >
				<option value="강아지">--선택--</option>
				<option value="강아지" <c:if test="${petAddVO.petAddType eq '강아지'}">selected</c:if>>강아지</option>
				<option value="고양이" <c:if test="${petAddVO.petAddType eq '고양이'}">selected</c:if>>고양이</option>
			</select> <label for="petAddType">동물유형</label>
		</div>
			  
		<div class="d-grid">
			<button style="margin-top: 15px" class="btn btn-primary btn-xl" id="submitButton"
				type="submit">수정</button>&nbsp;&nbsp;
			<button class="btn btn-primary btn-xl" id="resetButton" type="reset">리셋</button>
		</div>
	</form>
</body>
</html>