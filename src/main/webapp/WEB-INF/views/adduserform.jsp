<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="styles.css">
<meta charset="UTF-8">
<title>SignUp</title>
	<style>
	@import url('https://fonts.googleapis.com/css?family=Numans');
	
	html,body{
	background-image: url('http://getwallpapers.com/wallpaper/full/a/5/d/544750.jpg');
	background-size: cover;
	background-repeat: no-repeat;
	height: 100%;
	font-family: 'Numans', sans-serif;
	}
	
	.container{
	height: 100%;
	align-content: center;
	}
	
	.card{
	height: 370px;
	margin-top: auto;
	margin-bottom: auto;
	width: 400px;
	background-color: rgba(0,0,0,0.5) !important;
	}
	
	.card-header h3{
	color: white;
	}
	
	.input-group-prepend span{
	width: 50px;
	background-color: #FFC312;
	color: black;
	border:0 !important;
	}
	
	input:focus{
	outline: 0 0 0 0  !important;
	box-shadow: 0 0 0 0 !important;
	
	}

	.signup_btn{
	color: black;
	background-color: #FFC312;
	width: 100px;
	}
	
	.signup_btn:hover{
	color: black;
	background-color: white;
	}
	
	.child {
    display: inline-block;
    padding: 4px 4px;
}
	
	</style>
</head>
<body>

<!-- <form action="./adduserok" method="post" accept-charset="utf-8">
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
</form> -->
<div class="container">
<br/>
	<div class="d-flex justify-content-center h-100">
		<div class="card">
			<div class="card-header">
			<h3>Sign Up</h3>
			</div>
			<div class="card-body">
				<form action="./adduserok" method="post" accept-charset="utf-8">
					<div class="input-group form-group">
							<div class="input-group-prepend">
								<span class="input-group-text"><i class="fas fa-signature"></i></span>
							</div>
							<input type="text" class="form-control" placeholder="username" name="username">
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<input type="text" class="form-control" placeholder="userid" name="userid">
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
						<input type="password" class="form-control" placeholder="password" name='password'>
					</div>
					<!-- <div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-check"></i></span>
						</div>
						<input type="password" class="form-control" placeholder="password_confirm" name='password_confirm'>
					</div> -->
					<div class="form-group">
						<span class="child"><input type="submit" value="SignUp" class="btn float-right signup_btn"></span>
						<span class="child"><button type="button" onclick="location.href = 'login'" class="btn float-right signup_btn">Cancel</button></span>
					</div>
				</form>
			</div>
			<div class="card-footer">
			</div>
		</div>
	</div>
</div>

</body>
</html>
