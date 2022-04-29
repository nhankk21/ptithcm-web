<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="css/login.css">
    
    <title>Login</title>
</head>

<body class="center">
	
    <form class="signup" method = "post" action = "home.htm">
  	 	
        <h2 class="signup__heading">Đăng nhập</h2>
        <span class="error"> ${msg} </span>
        <div class="signup-form__group">
            <label for="username" class="signup-form__label">Tài khoản</label>
            <input type="text" class="signup-form__input" id="username" placeholder="Type your username here" name = "username">
        </div>
        <div class="signup-form__group">
            <label for="password" class="signup-form__label">Mật khẩu</label>
            <input type="password" class="signup-form__input" id="password" placeholder="Type your password here" name = "password">
        </div>
        <div class="signup-link">
            <a href="#" class="signup-forgot">Quên mật khẩu?</a>
        </div>
        <hr>
        <button class="signup-form__submit" name = "btnSubmit">Đăng nhập</button>
    </form>
</body>

</html>