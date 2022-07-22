<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>봉사활동 후기 수정</title>
</head>
<body>
	<div align="center">
		<div>
			<h1>VOLUNTEERREVIEW UPDATE</h1>
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
							<th width="100">게시판유형</th>
							<td width="200"><input type="text" size="73" id="boardId" name="boardId" value="${BoardVO.boardId }">
							<td></td>
						</tr>

						<tr>
							<th>제목</th>
							<td colspan="3"><input type="text" size="73" id="boardTitle" name="boardTitle" value="${BoardVO.boardTitle }">
							</td>
						</tr>
						<tr>
							<th width="100">작성자</th>
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
				<input type="submit" value="수정완료">&nbsp;&nbsp;&nbsp;
				<input type="reset" value="취소">&nbsp;&nbsp;&nbsp;
			</form>
		</div>
	</div>
</body>
</html>