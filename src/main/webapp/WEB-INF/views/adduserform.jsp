<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add User</title>
</head>
<body>

<h1>SIGN UP PAGE</h1>
<form action="./adduserok" method="post" accept-charset="utf-8">
	<table id = "user">
		<tr><td>NAME: <input type="text" name="username"><br/></td></tr>
		<tr><td>GENDER: <input type="radio" name="gender" value="m" checked>남자
		<input type="radio" name="gender" value="f">여자</td></tr>
		<tr><td>USER ID: <input type="text" name="userid"><br/></td></tr>
		<tr><td>PASSWORD: <input type="password" name="password" placeholder="숫자와 문자를 혼합해주세요!"><br/></td></tr>
		<tr><td>PASSWORD_CONFIRM:<input type="password" name="password_confirm"  /></td></tr>
		<tr><td>PHONE: <select name="phon1">
			<option>010</option>
			<option>02</option>
			<option>070</option>
			<option>054</option>
		</select>
		- <input type="text" name="phone2" size="5">
		- <input type="text" name="phone3" size="5"></td></tr>
		</table>
		<br/>
		<input type="submit" value="SignUp" style="background-color: yellow;">
		<button type="button" onclick="location.href = 'login'" style="background-color: white;">Cancel</button>
</form>

</body>
</html>
