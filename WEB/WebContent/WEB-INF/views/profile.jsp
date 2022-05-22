<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/css/profile.css">
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/login.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css"
	href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css"
	href="plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css"
	href="plugins/jquery-ui-1.12.1.custom/jquery-ui.css">
<link rel="stylesheet" href="styles/bootstrap4/bootstrap.min.css">


<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js">
	
</script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js">
	
</script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/style.css">

<style>
body {
	height: 100%;
	margin: 0;
	padding: 0;
	text-align: center;
}

.topnav {
	display: flex;
	justify-content: space-between;
	background-color: #333;
}

.topnav a {
	display: flex;
	color: #f2f2f2;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 17px;
}

.topnav a:hover {
	color: #fff;
	background: #2f89fc;
	border-bottom: 1px solid #2f89fc;
}

.topnav a.active {
	background-color: #04AA6D;
	color: white;
}

h1 {
	color: green;
}

/* Styling the button */
.btn {
	text-align: center;
	cursor: pointer;
	border: none;
	background-color: transparent;
	width: 100%;
	color: #3498db;
	font-size: 1em;
}

.topnav .active {
	width: 200px;
}
</style>
<title>Cá nhân</title>
</head>

<body>


	<div class="topnav sticky-top" style="overflow: hidden;">
		<div class="active">
			<div style="width: 200px;">


				<a>
					<form action="home.htm" method="post">

						<button class="btn" href="home.htm" type="submit">Trang
							chủ</button>

					</form>

				</a>
			</div>
		</div>
		<div style="display: flex;">

			<a>
				<form action="profile.htm" method="post">

					<button class="btn" type="submit" name="btnProfile"
						href="profile.htm">${username}</button>
				</form>

			</a>
		</div>

	</div>
	<div class="wrapper d-flex align-items-stretch"
		style="overflow: hidden;">



		<!-- Sidebar  -->
		<nav id="sidebar" class="position-fixed h-100"
			style="overflow: hidden;">
		<ul class="list-unstyled components mb-5">
			<li><a>
					<form action="product.htm" method="post">

						<button class="btn" type="submit" href="product.htm">Sản
							phẩm</button>
					</form>
			</a></li>

			<li><a>
					<form action="sell.htm" method="post">

						<button class="btn" type="submit" href="sell.htm">Bán
							hàng</button>
					</form>

			</a></li>


			<li><a>
					<form action="statistic.htm" method="post">

						<button class="btn" type="submit" href="statistic.htm">
							Thống kê</button>
					</form>
			</a></li>

			<li><a>
					<form action="logout.htm" method="post">
						<button class="btn" type="submit" href="logout.htm">Đăng
							xuất</button>
					</form>
			</a></li>

		</ul>

		</nav>
		<!-- End Sidebar  -->


		<!-- Content -->
		<div id="content" class="p-4 p-md-5 pt-5"
			style="overflow: auto; margin-left: 210px;">

			<!-- Main Content -->
			<div class="container rounded bg-white mt-5 mb-5">
				<div class="row">
					<div class="col-md-3 border-right">
						<div
							class="d-flex flex-column align-items-center text-center p-3 py-5">
							<span class="font-weight-bold">Tên tài khoản: ${username}</span>

							<div id="form-change-password"
								class="d-flex flex-column align-items-center text-center p-3 py-5 ">

								<span class="font-weight-bold">Đổi mật khẩu</span>

								<div class="col-md-12">
									<label class="labels"> ${msgChangePass} </label>
								</div>
								<br>
								<form action="profile.htm" method="post">


									<div class="col-md-12">
										<label class="labels">Mật khẩu cũ</label><input type="text"
											class="form-control border" placeholder="Mật khẩu cũ"
											value="" name="oldPass">
									</div>
									<div class="col-md-12">
										<label class="labels">Mật khẩu mới</label><input type="text"
											class="form-control border" placeholder="Mật khẩu mới"
											value="" name="newPass">
									</div>
									<div class="col-md-12">
										<label class="labels">Nhập lại mật khẩu mới</label><input
											type="text" class="form-control border"
											placeholder="Nhập lại mật khẩu mới" value=""
											name="re_newPass">
									</div>

									<div class="mt-5 text-center">
										<button class="btn btn-primary profile-button text-white my-4"
											type="reset">Huỷ</button>

										<button class="btn btn-primary profile-button text-white"
											type="submit" name="btnChangePass" href="profile.htm">Xác
											nhận</button>
									</div>

								</form>
							</div>

						</div>
					</div>
					<div class="col-md-5 border-right">
						<div class="p-3 py-5">
							<div
								class="d-flex justify-content-between align-items-center mb-3">
								<h4 class="text-right">Thông tin cá nhân</h4>
							</div>

							<div class="col-md-12">
								<label class="labels"> ${msgSave} </label>
							</div>
							<br>

							<form action="profile.htm" method="post">

								<input type="text border" style="display: none;" id="code"
									name="code" value="${user.code}">
								<div class="row mt-2">
									<div class="col-md-6">
										<label class="labels">Họ</label> <input type="text"
											class="form-control border" placeholder="Họ"
											value="${user.lastName}" name="lastName">
									</div>
									<div class="col-md-6">
										<label class="labels">Tên</label> <input type="text"
											class="form-control border" value="${user.firstName}"
											name="firstName" placeholder="Tên">
									</div>
								</div>
								<div class="row mt-3">
									<div class="col-md-12">
										<label class="labels">Số điện thoại</label> <input
											type="number" pattern="[0-9]{3}-[0-9]{2}-[0-9]{3}"
											class="form-control border" placeholder="Nhập số điện thoại"
											value="${user.phoneNum}" name="phoneNum">
									</div>
									<div class="col-md-12">
										<label class="labels">Địa chỉ</label><input type="text"
											class="form-control border" placeholder="Nhập địa chỉ"
											value="${user.address}" name="address">
									</div>
									<div class="col-md-12">
										<label class="labels">CMND/CCCC</label><input type="text"
											class="form-control border" placeholder="Nhập CMND/CCCC"
											value="${user.idNum}" name="idNum">
									</div>
									<div class="col-md-12">
										<label class="labels">Ngày sinh</label><input type="date"
											format="yyyy-mm-dd" class="form-control border"
											placeholder="Nhập ngày sinh" value="${user.dayOfBirth}"
											name="dayOfBirth">
									</div>
								</div>
								<div class="mt-5 text-center">
									<button class="btn btn-primary profile-button text-white"
										type="submit" name="btnSave" href="profile.htm">Lưu
										thông tin</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<!-- End main content -->


		</div>
		<!-- End Content -->

		<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
		<script type="text/javascript" src="styles/bootstrap4/popper.js"></script>
		<script type="text/javascript"
			src="styles/bootstrap4/bootstrap.min.js"></script>
		<script type="text/javascript"
			src="plugins/Isotope/isotope.pkgd.min.js"></script>
		<script type="text/javascript"
			src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
		<script type="text/javascript" src="plugins/easing/easing.js"></script>
		<script type="text/javascript"
			src="plugins/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
		<script type="text/javascript" src="js/categories_custom.js"></script>
</body>

</html>