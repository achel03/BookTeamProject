<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page
	import="com.mycom.team.board.BoardDAO, com.mycom.team.board.BoardVO, java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book Recommendation Board</title>
<style>
#list {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

#list td, #list th {
	border: 1px solid #ddd;
	padding: 8px;
	text-align: center;
}

#list tr:nth-child(even) {
	background-color: #f2f2f2;
}

#list tr:hover {
	background-color: #ddd;
}

#list th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: center;
	background-color: #006bb3;
	color: white;
}
</style>
<script>
	function delete_ok(id) {
		var a = confirm("정말로 삭제하겠습니까?");
		if (a)
			location.href = 'delete/' + id;
	}
</script>
</head>
<body>
	<h1>Book Recommendation Service</h1>

	<table id="list" width="90%">
		<tr>
			<th>Id</th>
			<th>Title</th>
			<th>Writer</th>
			<th>Comment</th>
			<th>Genre</th>
			<th>Star</th>
			<th>Regdate</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<c:forEach items="${list}" var="u">
			<tr>
				<td>${u.getSeq()}</td>
				<td>${u.getTitle()}</td>
				<td>${u.getWriter()}</td>
				<td>${u.getComment()}</td>
				<td>${u.getGenre()}</td>
				<td>${u.getStar()}</td>
				<td>${u.regdate}</td>
				<td><a href="editform/${u.getSeq()}">Edit</a></td>
				<td><a href="javascript:delete_ok('${u.getSeq()}')">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
	<br />
	<button type="button" onclick="location.href = 'add'">Add New
		Book</button>
</body>
</html>