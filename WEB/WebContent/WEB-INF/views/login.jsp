<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">

            <link rel="stylesheet" href="css/login.css">

            <title>Đăng nhập</title>
        </head>

        <body class="center">
            <form class="signup" method="post">

				
                <h2 class="signup__heading">Đăng nhập</h2>
                <span class="error"> ${msg} </span>
                <br>
                <div class="signup-form__group">
                    <label for="username" class="signup-form__label">Tài khoản</label>
                    <input type="text" class="signup-form__input" id="username" placeholder="Nhập tài khoản"
                        name="username">
                </div>
                <div class="signup-form__group">
                    <label for="password" class="signup-form__label">Mật khẩu</label>
                    <input type="password" class="signup-form__input" id="password" placeholder="Nhập mật khẩu"
                        name="password">
                </div>
                <hr>
                <button href="home.htm" class="signup-form__submit" type="submit" name="btnSubmit">Đăng nhập</button>
            </form>
        </body>

        </html>