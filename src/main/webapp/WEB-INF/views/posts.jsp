<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page
	import="com.mycom.team.board.BoardDAO, com.mycom.team.board.BoardVO, java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>Book Recommendation</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
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
	.bd-placeholder-img {
	        font-size: 1.125rem;
	        text-anchor: middle;
	        -webkit-user-select: none;
	        -moz-user-select: none;
	        user-select: none;
	      }
	
	@media (min-width: 768px) {
	  .bd-placeholder-img-lg {
	    font-size: 3.5rem;
	  }
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
  </div>
</nav>
<div class="jumbotron jumbotron-fluid text-center">
  <div class="container">
    <h1 class="display-5">Book Recommendation Lists</h1>
  </div>
</div>
<img src="../resources/img/book.jpg" class="img-responsive" style="width:100%" alt="Image">
<table class="table table-striped">
  <thead class="thead-dark">
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Title</th>
      <th scope="col">Writer</th>
      <th scope="col">Comment</th>
      <th scope="col">Genre</th>
      <th scope="col">Star</th>
      <th scope="col">Regdate</th>
      <th scope="col">Edit</th>
      <th scope="col">Delete</th>
    </tr>
  </thead>
  <tbody>
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
		</tbody>
	</table>
	<br />
<button type="button" class="btn btn-outline-secondary" onclick="location.href = 'add'">Add New Book</button>
<!-- <script src="/docs/5.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
 -->
<footer class="footer mt-auto py-3">
	<div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
	    © 2021 Copyright:
	    <a class="text-dark" href="https://mdbootstrap.com/">실전 프로젝트 1 - TEAM PROJECT</a>
	</div>
</footer>
 
 </body>
</html>