<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% 

%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의글 상세 보기</title>
<style>
	table{
		border: 1px solid black;
		border-radius: 10px;
	}
</style>

	<script type="text/javascript">
		function changeView(value)
		{
			if(value == 0)	location.href="BoardListAction.bo?page=${pageNum}";
			else if(value == 1){
				location.href='BoardReplyFormAction.bo?num=${board.board_num}&page=${pageNum}';
			}
				
		}
	</script>

</head>
<body>
 <h2>문의글 상세보기</h2>
 <div>
	<table>
 		<tr>
 			<td>글번호</td>
 			<td>${board.boardNo}</td>
			<td>제목</td>
			<td>${board.boardTitle}</td>
			<td>작성일자</td>
			<td>${board.boardDate}</td>
		</tr>
		<tr>
			<td colspan="6">내용</td>
		</tr>
		<tr>
			<td colspan="6" rowspan="10">${board.boardcontent}</td>
		</tr>

	</table>

	
<c:if test = "${sessionScope.sessionID != null }">
	<c:if test = "${sessionScope.sessionID == member_id }">
		<input type="button" value="수정">
		<input type="button" value="삭제">
	</c:if>
		<input type="button" value="답글" onclick="">
</c:if>
 </div>
 
</body>
</html>