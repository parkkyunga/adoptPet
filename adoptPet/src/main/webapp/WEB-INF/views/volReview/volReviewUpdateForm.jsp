<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>봉사활동 후기 수정</title>
<link href="css/adoptpet.css" rel="stylesheet" /> 
</head>
<body>
	<div align="center">
		<div>
			<h1>게시글 수정 등록</h1>
		</div>
	<div>
		<form action="volReviewUpdateForm.do" method="post">
			<div>
				<table border="1">
					<tbody>
						<c:choose>
							<c:when test="${not empty BoardVO }">
								<input type="hidden" id="boardNo" size="73" name="boardNo" value="${BoardVO.boardNo}">
						<tr>
							<th >게시판유형</th>
							<td><input type="text" size="73" id="boardId" name="boardId" value="${BoardVO.boardId }">
							<td></td>
						</tr>

						<tr>
							<th>제목</th>
							<td colspan="3"><input type="text" size="73" id="boardTitle" name="boardTitle" value="${BoardVO.boardTitle }">
							</td>
						</tr>
						<tr>
							<th >작성자</th>
							<td><input type="text" id="boardWriter" name="boardWriter" value="${BoardVO.boardWriter }"></td>
						</tr>

						<tr>
							<th>내용</th>
							<td colspan="3"><textarea id="boardContent" name="boardContent">${BoardVO.boardContent}</textarea></td>
						</tr>
								</c:when>
				
							</c:choose>
						</tbody>
					</table>
				</div>
				<br> 
			      <input class="btn btn-primary btn-l" type="submit" value="수정완료">
			      <input class="btn btn-primary btn-l" type="reset" value= "취소">
			</form>
		</div>
	</div>
</body>
</html>