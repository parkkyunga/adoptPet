<%@page import="co.yedam.puppy.vo.FilesVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입양소개게시판 수정</title>
</head>
<body>
	<section class="page-section" id="contact">
		<div class="container px-4 px-lg-5">
			<div class="row gx-4 gx-lg-5 justify-content-center">
				<div class="col-lg-8 col-xl-6 text-center">
					<h2 class="mt-0">EDIT&nbsp;&nbsp;PET&nbsp;&nbsp;INTRODUCE</h2>
					<hr class="divider" />
				</div>
			</div>
			<div class="row gx-4 gx-lg-5 justify-content-center mb-5">
				<div class="col-lg-6">

	<div>
		<form action="petListUpdate.do" method="post" enctype="multipart/form-data" >
		
			<input type="hidden" name="petListNo" value="${vo.petListNo}">
			<!-- Name input-->
			<div class="form-floating mb-3">
				<select class="form-control" id="petListType" name="petListType" >
					<option value="강아지">--선택--</option>
					<option value="강아지" <c:if test="${vo.petListType eq '강아지' }">selected</c:if>>강아지</option>
					<option value="고양이" <c:if test="${vo.petListType eq '고양이'}">selected</c:if>>고양이</option>
				</select> <label for="petListType">동물유형</label>
			</div>
			
			<div class="form-floating mb-3">
			<select class="form-control" id="petListState" name="petListState" >
				<option value="입양대기">--선택--</option>
				<option value="입양대기" <c:if test="${vo.petListState eq '입양대기'}">selected</c:if>>입양대기</option>
				<option value="입양승인" <c:if test="${vo.petListState eq '입양승인'}">selected</c:if>>입양승인</option>
				<option value="입양불가" <c:if test="${vo.petListState eq '입양불가'}">selected</c:if>>입양불가</option>
			</select> <label for="petListState">입양여부</label>
		</div>
		
		<input type="hidden" name="boardId" value="50">
		
		<div class="form-floating mb-3">
			<input class="form-control" type="text" id="petListWriter"
			name="petListWriter" value="관리자" readonly/> <label for="petListWriter">작성자</label>
		</div>
		
		<div class="form-floating mb-3">
			<input class="form-control" type="text" id="petListTitle"
			name="petListTitle" value="${vo.petListTitle}" readonly/> <label for="petListTitle">제목</label>
		</div>
		
		<div class="form-floating mb-3">
	   		 <textarea class="form-control" id="petListContent" name="petListContent" type="text" placeholder="Enter your content here..." style="height: 10rem" data-sb-validations="required">${vo.petListContent}</textarea>
	         <label for="message">내용</label>
	         <div class="invalid-feedback" data-sb-feedback="message:required">Content is required.</div>
        </div>
        
        <div class="form-floating mb-3">
             <input class="form-control" id="files" name="file1" type="file" />
             <input class="form-control" id="files" name="file2" type="file" />
             <input class="form-control" id="files" name="file3" type="file" />
        </div>
			
		<!-- Submit Button-->
		<div class="d-grid">
			<button style="margin-top: 15px" class="btn btn-primary btn-xl" id="submitButton"
			type="submit">수정</button>&nbsp;&nbsp;
			<button class="btn btn-primary btn-xl" id="resetButton"
			type="reset">리셋</button>
		</div>
		</form>
	</div>
	
	<script>
		if(${r}>0 ) {
			alert("수정이 완료되었습니다!");
			location.href = "petList.do";
		}
	</script>
</body>
</html>