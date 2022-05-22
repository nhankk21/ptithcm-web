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
<link rel="stylesheet" href="styles/bootstrap4/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet" href="css/statistic.css" type="text/css">
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

.bill-item {
	position: relative;
	margin-bottom: 10px;
}

.bill-item .bill-item__line {
	content: '';
	width: 100%;
	height: 1.5px;
	background: #000;
	display: block;
	bottom: 0;
	left: 0;
}

label {
	font-weight: 100;
}

.labels {
	font-weight: 700;
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
						<form action="logout.htm" method="post">
							<button class="btn" type="submit" href="logout.htm">
								Đăng xuất</button>
						</form>
				</a></li>

			</ul>

		</nav>
		<!-- End Sidebar  -->


		<!-- Content -->
		<div id="content" class="p-4 p-md-5 pt-5"
			style="overflow: auto; margin-left: 210px;">

			<div class="h-50 pt-5">


				<div class='row'>
					<div class="px-3  h-75 overflow-auto col-md-6">
						<h4 class="text-center">Danh sách hoá đơn đã tạo</h4>
						<c:forEach items="${list}" var="item">
							<div class='bill-item'>
								<div class="col-md-12">
									<label class="labels">Mã hoá đơn: ${item.id}</label>
								</div>
								<div class="col-md-12 pl-3">
									<label>Tổng tiền: ${item.totalMoney} VND</label>
								</div>
								<div class="col-md-12 pl-3">
									<label>Thời gian: ${item.time}</label>
								</div>
								<form method="post">
									<input type="text" style="display: none;" id="bill_id"
										name="bill_id" value="${item.id}">
									<button type="submit" class="btn btn-primary text-white" name="btnDetail" style="width: 100px">
										Chi tiết
									</button>
								</form>
							</div>
						</c:forEach>


					</div>
					<div class="px-3  h-75 overflow-auto col-md-6" style="position: fixed; right: 0; top: 150px;">
						<h4 class="text-center">Chi tiết hoá đơn</h4>
						<c:forEach items="${listDetail}" var="item">

							<div class="col-md-12">
								<label class="labels">Tên: ${item.name }</label>
							</div>
							<div class="col-md-12 pl-3">
								<label class="labels">Số lượng: ${item.num} VND</label>
							</div>

							<br>
						</c:forEach>


					</div>
				</div>
			</div>

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