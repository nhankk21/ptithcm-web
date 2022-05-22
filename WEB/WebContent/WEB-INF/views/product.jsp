<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/product.css">
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js">
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
<title>Sản phẩm</title>
</head>

<body>

	<div id="modal"></div>


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
			style="overflow: auto; margin-left: 210px;"">

			<!-- Main content -->

			<br>
			<div
				class="container mt-5 mb-5 justify-content-right position-relative">

				<div class="d-flex justify-content-right row">
					<div class="col-md-8" id="main-content">

						<c:forEach items="${listAllProduct}" var="product">

							<div
								class="row p-2 bg-white border rounded mt-2 justify-content-around">
								<div class="col-md-3 mt-1">
									<img class="img-fluid img-responsive rounded product-image"
										src="${product.imageURL}">
								</div>
								<div class="col-md-4 mt-1">
									<h5 style="font-size: 20px;" class="name">${product.name}</h5>
									<div class="d-flex flex-row">
										<span>Số lượng: ${product.quantity}</span>
									</div>
									
									<p class="text-justify text-truncate para mb-0">${product.description}
										<br> <br>
									</p>
								</div>
								<div
									class="align-items-center align-content-center col-md-3 border-left mt-1">
									<div class="d-flex flex-row align-items-center">
										<h4 class="mr-1">${product.price} VND</h4>

									</div>

									<div class="d-flex flex-column mt-4">
										<form action="product/edit.htm" method="post">
										
											<input type="text" style="display: none;" id="productID"
												name="productID" value="${product.ID}">
											<button class="btn btn-primary btn-sm text-white my-3 edit"
												type="submit" href="product/edit.htm">Chỉnh sửa</button>
												
												
										</form>

										<form method="post">
											<input type="text" style="display: none;" id="productID"
												name="productID" value="${product.ID}">
											<button class="btn btn-primary btn-sm text-white my-3 edit"
												type="submit" name="btnDelete">Xoá</button>
										</form>
									</div>
								</div>
							</div>
						</c:forEach>

					</div>
				</div>

				<div class="position-fixed" style="right: -0px; top: 100px;">
					<h2>Thêm sản phẩm</h2>
					<div class="panel-body">
						
						<form class="form-horizontal" role="form" method="post">
							
							
							
							<div class="form-group">
								<div class="col-sm-6">
									<label class="control-label small">Tên sản phẩm </label> <input
										type="text" class="form-control" name="add_name" id="add_name"
										placeholder="Tên sản phẩm">
								</div>
								
								<div class="col-sm-6">
									<label class="control-label small">Số lượng tồn</label> <input
										type="number" class="form-control" name="add_quantity"
										id="add_quantity" placeholder="Số lượng tồn">
								</div>
							</div>
							<!-- form-group // -->
							<div class="form-group">

								<div class="col-sm-12">
									<label class="control-label small">Giá thành </label> <input
										type="number" class="form-control" name="add_price" id="add_price"
										placeholder="Giá thành">
								</div>

							</div>
							<!-- form-group // -->
							<div class="form-group">

								<div class="col-sm-12">
									<label class="control-label small">Hình ảnh </label> <input
										type="text" class="form-control" name="add_imageURL" id="add_imageURL"
										placeholder="Hình ảnh">
								</div>

							</div>
							<!-- form-group // -->

							<div class="form-group">

								<div class="col-sm-12">
									<label class="control-label small">Mô tả </label>
									<textarea class="form-control" name="add_description"></textarea>
								</div>

							</div>
							<br>
							<div class="form-group">

								<div class="col-sm-12">
									<button type="submit" class="btn btn-primary text-white" name="btnAdd">
									Thêm sản phẩm</button>
								</div>

							</div>
							<!-- form-group // -->
						</form>
					</div>

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