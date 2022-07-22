<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입양 후기 수정</title>
</head>
<body>

<section class="page-section" id="contact">
            <div class="container px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-lg-8 col-xl-6 text-center">
                        <h2 class="mt-0">봉사리뷰 수정!!</h2>
                        <hr class="divider" />
                    </div>	
                </div>
                <div class="row gx-4 gx-lg-5 justify-content-center mb-5">
                    <div class="col-lg-6">
        		
                <form id="contactForm" action="volReviewUpdate.do" method="post">목                    <!-- Name input-->
		<c:choose>
	<c:when test="${not empty BoardVO }">
                    <div class="form-floating mb-3">
<input type="hidden" id="boardNo" size="73" name="boardNo" value="${BoardVO.boardNo}">
                        <input class="form-control" id="boardTitle" type="text" name="boardId"  value="${BoardVO.boardId }"/>
                        <label for="name">게시판 유형</label>
                        <div class="invalid-feedback" data-sb-feedback="name:required">Title is required.</div>
                    </div>

                    <div class="form-floating mb-3">
                        <input class="form-control" type="text" id="boardTitle" name="boardTitle" value="${BoardVO.boardTitle }"/>
                        <label for="name">제목</label>
                    </div>

            <div class="form-floating mb-3">
                        <input class="form-control" type="text" id="boardWriter" name="boardWriter" value="${BoardVO.boardWriter}"/>
                        <label for="name">작성자</label>
                    </div>


                     <div class="form-floating mb-3">
                        <input class="form-control" id="name" type="date"  data-sb-validations="required"  value="${BoardVO.boardDate"/>
                        <label for="name">Date</label>
                    </div>

                    <!-- Message input-->
                    <div class="form-floating mb-3">
                        <textarea class="form-control" id="boardContent" name="boardContent" type="text" style="height: 10rem" data-sb-validations="required">${BoardVO.boardContent}</textarea>

                        <label for="message">내용</label>
                        
                    </div>
                	</c:when>
				
	</c:choose>
                    
                 
                    
       <div class="d-grid">
		<input class="btn btn-primary btn-l" type="submit" value="수정완료">
		<input class="btn btn-primary btn-l" type=“reset” value=“취소”>
       </div>
                       
                       
                        </form>
                    </div>
                </div>
                </div>
                </section>
                
</body>
</html>