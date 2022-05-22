<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/home_content.css">
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
<title>Trang chủ</title>
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

							<button class="btn" type="submit" href="product.htm">
								Sản phẩm</button>
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
						<form action="login.htm" method="post">
							<button class="btn" type="submit" href="login.htm">Đăng
								xuất</button>
						</form>
				</a></li>

			</ul>

		</nav>
		<!-- End Sidebar  -->


		<!-- Content -->
		<div id="content" class="p-4 p-md-5 pt-5"
			style="overflow: auto; margin-left: 210px;">

			<div class="container">
				<form class="needs-validation" name="frmthanhtoan" method="post"
					action="#">


					<div class="py-5 text-center">

						<h2>Tạo hoá đơn</h2>
					</div>

					<div class="row">
						<div class="col-md-4 order-md-2 mb-4">
							<h4
								class="d-flex justify-content-between align-items-center mb-3">
								<span class="text-muted">Giỏ hàng</span>
							</h4>
							<ul class="list-group mb-3">

								<c:forEach items="${selectedList}" var="item">


									<li
										class="list-group-item d-flex justify-content-between lh-condensed">
										<div>
											<h6 class="my-0">${item.name}</h6>
											<small class="text-muted">x ${item.quan}</small>
										</div>
									</li>

								</c:forEach>

							</ul>

						</div>
						<form method="post">

							<div class="col-md-4 order-md-1">


								<div class="row">

									<div class="col-md-6">
										<h4 class="mb-3">Nhân viên: ${username}</h4>

										<label >Hình thức thanh toán</label> 
										<input
											type="text" class="form-control" name="add_cash" value="${add_cash}">

										<label >Địa chỉ</label> 
										<input type="text"
											class="form-control" name="add_address" value="${add_address}">
											
										<label>Số điện thoại</label> 
										<input type="number" class="form-control" name="add_phone" value="${add_phone}"> 
										<br>
										<button class="btn btn-primary btn-sm text-white"
											type="submit" name="btnOrder">Tạo hoá đơn</button>


									</div>
								</div>

							</div>
							<div class="col-md-4 order-md-1">


								<div class="row">

									<div class="col-md-6">
										<h4 class="mb-3">Chọn sản phẩm</h4>


										<select name="selectProduct" style="width: 100%">
											<c:forEach items="${list}" var="item">

												<option value="${item.ID}@${item.name}">${item.name}</option>>

											</c:forEach>
										</select> 
										<label>Số lượng</label> 
										<input type="number" min="0" max="999999" value="0"
											class="form-control" name="add_quantity"> <br>
										<button class="btn btn-primary btn-sm text-white"
											type="submit" name="btnAddCart">Thêm sản phẩm</button>

									</div>
								</div>
							</div>
						</form>
					</div>
				</form>

			</div>
			<!-- End Main Content -->

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