<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<title>Add post</title>
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
	    	<button type="button" class="btn btn-secondary btn-sm" onclick="history.back()">Page 나가기</button>
            </li>
        </ul>
    </div>
  </div>
</nav>
<div class="container">
<br/>
<h1>Add new book comment</h1>
<br/>
<form action="./addok" method="post" accept-charset="utf-8">
	<table id = "edit" class="table table-bordered">
		<tr><td>Title of Book</td><td><input type="text" name="title" /></td></tr>
		<tr><td>Writer of Book</td><td><input type="text" name="writer" /></td></tr>
		<tr><td>Comments about Book</td><td><textarea cols="50" rows="5" name="comment"></textarea></td></tr>
		<tr><td>Genre of Book</td><td>
		<select name="genre">      
                    <option value="romance" >로맨스/드라마/일상</option>
                    <option value="sf"> SF/추리/스릴러</option>
                    <option value="lang">언어/심리/철학</option>
                    <option value="math" >수학/과학/물리</option>
                    <option value="it" >IT/AI</option>
                    <option value="other" >기타</option>
		</select></td></tr>
		<tr><td>Star</td><td><input type="radio" name="star" value="1" checked>1
		<input type="radio" name="star" value="2">2
		<input type="radio" name="star" value="3">3
		<input type="radio" name="star" value="4">4
		<input type="radio" name="star" value="5">5</td></tr>
		</table>
		<br/>
		<button type="button" class="btn btn-outline-secondary" onclick="location.href = 'list'">See Lists</button>
		<button type="submit" class="btn btn-outline-secondary" onclick="location.href = 'add'">Save</button>
</form>
</div>
</body>
</html>
