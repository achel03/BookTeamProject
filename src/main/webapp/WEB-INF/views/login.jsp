<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<style>
h2 {
	text-align: center;
}

img {
	width:530px;
	display: inline-block;
	margin-top: 20px;
}

label {
	display: inline-block;
	width: 130px;
}

button {
	background-color: green;
	color: white;
	font-size: 15px;
}

fieldset {
	margin: 0 auto;
	line-height: 50px;
	width: 500px;
	height: 200px;
}
</style>
</head>
<body>
	<div style='width: 100%; text-align: center; padding-top: 100px'>
		<h2>SIGN IN PAGE</h2>
		<form method="post" action="loginOk">
			<fieldset>
				<label>User ID: </label><input type='text' name='userid' /> <br>
				<label>Password: </label> <input type='password' name='password' />
				<br>
				<button type='submit'>SignIn</button>
			</fieldset>
		</form>
		<img src='../resources/img/christmas.jpg' height="250">
		<br/>
		<button type="button" onclick="location.href = 'adduser'" style="background-color: blue;">SignUp(회원가입)</button>
	</div>
</body>
</html>