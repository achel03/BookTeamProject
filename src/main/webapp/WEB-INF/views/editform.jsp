<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page import="com.mycom.team.board.BoardDAO, com.mycom.team.board.BoardVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<title>Edit Form</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Book Recommendation Service</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
      <a class="nav-item nav-link active" href="#">Home <span class="sr-only">(current)</span></a>
      <a class="nav-item nav-link" href="#">Detail</a>
      <a class="nav-item nav-link" href="#">User</a>
    </div>
    <div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
	    	<button type="button" class="btn btn-secondary btn-sm" onclick="history.back()">되돌리기</button>
            </li>
        </ul>
    </div>
  </div>
</nav>
</head>
<body>
<div class="container">
<br/>
<h1>Edit Post</h1>
<br/>
<form:form commandName="boardVO" method="POST" action = "../editok" accept-charset="utf-8">
	<form:hidden path = "seq"/>
	<table id="edit" class="table table-bordered">
		<tr><td>제목</td><td><form:input path="title" /></td></tr>
		<tr><td>글쓴이</td><td><form:input path="writer" /></td></tr>
		<tr><td>코멘트</td><td><form:textarea cols="50" rows="5" path="comment" /></td></tr>
		<tr><td>장르</td><td><form:input path="genre" /></td></tr>
		<tr><td>별점</td><td><form:input path="star" /></td></tr>
	</table>
	<input type = "reset" class="btn btn-outline-secondary" value="초기화하기"/>
	<input type = "submit" class="btn btn-outline-secondary"  value="수정하기"/>
	<input type = "button" class="btn btn-outline-secondary"  value="취소하기" onclick = "history.back()"/>

</form:form>
</div>
</body>
</html>