<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="${contextPath}/resources/js/lib/jquery-3.6.4.min.js"></script>
<script>
	function fnList() {
		location.href = '${contextPath}/notice/list.do';
	}
</script>
</head>
<body>

	<div>
		<h1>공지 작성하기</h1>
		<form method="post" action="${contextPath}/list/add.do">
		<table>
		<tr>
			<td><label for="title">구분</label></td>
			<td>
				<select>
				<option value="긴급">긴급</option>
 				<option value="일반" selected>일반</option>
				</select>
			</td>
		</tr>
		<tr>
			<td><label for="title">제목</label></td>
			<td><input type="text" title="title" name="title">
		</tr>
		<tr>
			<td><div><label for="content">내용</label></div></td>	
			<td><textarea id="content" name="content"></textarea></td>
		</tr>
		<tr>
			<td><button>작성완료</button></td>
			<td><input type="button" value="목록" onclick="fnList()"></td>
		</tr>
			</table>
		</form>
	</div>
	
</body>
</html>