<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page import="com.mycom.team.board.BoardDAO, com.mycom.team.board.BoardVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
</head>
<body>

<h1>Edit Post</h1>
<form:form commandName="boardVO" method="POST" action = "../editok" accept-charset="utf-8">
	<form:hidden path = "seq"/>
	<table id="edit">
		<tr><td>제목</td><td><form:input path="title" /></td></tr>
		<tr><td>글쓴이</td><td><form:input path="writer" /></td></tr>
		<tr><td>코멘트</td><td><form:textarea cols="50" rows="5" path="comment" /></td></tr>
		<tr><td>장르</td><td><form:input path="genre" /></td></tr>
		<tr><td>별점</td><td><form:input path="star" /></td></tr>
	</table>
	<input type = "reset" value="초기화하기"/>
	<input type = "submit" value="수정하기"/>
	<input type = "button" value="취소하기" onclick = "history.back()"/>

</form:form>
</body>
</html>