<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add post</title>
</head>
<body>

<h1>Add new book comment</h1>
<form action="./addok" method="post" accept-charset="utf-8">
	<table id = "edit">
		<tr><td>책 제목</td><td><input type="text" name="title" /></td></tr>
		<tr><td>책 작가</td><td><input type="text" name="writer" /></td></tr>
		<tr><td>책에 대한 코멘트</td><td><textarea cols="50" rows="5" name="comment"></textarea></td></tr>
		<tr><td>책 장르</td><td>
		<select name="genre">      
                    <option value="romance" >로맨스/드라마/일상</option>
                    <option value="sf"> SF/추리/스릴러</option>
                    <option value="lang">언어/심리/철학</option>
                    <option value="math" >수학/과학/물리</option>
                    <option value="it" >IT/AI</option>
                    <option value="other" >기타</option>
		</select></td></tr>
		<tr><td>별점</td><td><input type="radio" name="star" value="1" checked>1
		<input type="radio" name="star" value="2">2
		<input type="radio" name="star" value="3">3
		<input type="radio" name="star" value="4">4
		<input type="radio" name="star" value="5">5</td></tr>
		</table>
		<br/>
	<button type="button" onclick="location.href=list"> 목록보기 </button>
	<button type="submit"> 저장하기 </button>
</form>

</body>
</html>
