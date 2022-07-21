<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의글 작성/등록</title>
</head>
<body>
<div align="center">
	<div><h1>문의글 작성/등록</h1></div>
	<div>
		<form id="frm" action="qnaBoardInsert.do" method="post" enctype="form-data">
			<div>
				<table border="1">
					<tr>
						<th width="150">작성자</th>
						<td><input type="text" id="boardWriter" name="boardWriter" value="${id }" required></td>
					</tr>		
					<tr>
						<th>제목</th>
						<td colspan="3">
							<input type="text" id="boardTitle" name="boardTitle" size="73">
						</td>
					</tr>
					<tr>
						<th>내용</th>
						<td colspan="3">
							<textarea rows="6" cols="75" id="boardContent" name="boardContent"></textarea>
						</td>
					</tr>

				</table>
			</div><br>
			<div>
				<input type="submit" value="저장">&nbsp;&nbsp;&nbsp; 
				<input type="reset" value="전체 삭제">
			</div>
		</form>
	</div>
</div>
</body>
</html>