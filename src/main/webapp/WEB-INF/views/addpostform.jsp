<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add post</title>
</head>
<body>

<h1>Add new post</h1>
<form action="./addok" method="post" accept-charset="utf-8">
	<table id = "edit">
		<tr><td>제목</td><td><input type="text" name="title" /></td></tr>
		<tr><td>글쓴이</td><td><input type="text" name="writer" /></td></tr>
		<tr><td>코멘트</td><td><textarea cols="50" rows="5" name="comment"></textarea></td></tr>
		<tr><td>장르</td><td><input type="text" name="genre"/></td></tr>
		<tr><td>별점</td><td><input type="text" name="star"/></td></tr>
		</table>
	<button type="button" onclick="location.href=list"> 목록보기 </button>
	<button type="submit"> 저장하기 </button>
</form>

</body>
</html>
