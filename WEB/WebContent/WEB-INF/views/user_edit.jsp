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

<title>Chỉnh sửa người dùng</title>
</head>
<body>
	<div style="margin: 0 auto;">
		<div class="container">
			<section class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">Chỉnh sửa thông tin người dùng</h3>
				</div>
				<div class="panel-body" >

					<form class="form-horizontal" role="form" method="post">

						<div class="form-group">
							<div class="col-sm-3"></div>
							<div class="col-sm-3">
								<label class="control-label small">Họ</label> <input type="text"
									class="form-control" name="last" placeholder="Họ"
									value="${user.lastName}">
							</div>
							<div class="col-sm-3">
								<label class="control-label small">Tên</label> <input
									type="text" class="form-control" name="first" placeholder="Tên"
									value="${user.firstName}">
							</div>
						</div>
						<!-- form-group // -->
						<div class="form-group">
							<div class="col-sm-3"></div>
							<div class="col-sm-3">
								<label class="control-label small">Số điện thoại </label> <input
									type="number" class="form-control" name="phone"
									placeholder="Số điện thoại" value="${user.phoneNum}">
							</div>
							<div class="col-sm-3">
								<label class="control-label small">Địa chỉ </label> <input
									type="text" class="form-control" name="address"
									placeholder="Địa chỉ" value="${user.address}">
							</div>

						</div>

						<!-- form-group // -->
						<div class="form-group">
							<div class="col-sm-3"></div>
							<div class="col-sm-3">
								<label class="control-label small">CCCD/CMND </label> <input
									type="text" class="form-control" name="cccc"
									placeholder="CCCD/CMND" value="${user.idNum}">
							</div>
							<div class="col-sm-3">
								<label class="control-label small">Ngày sinh </label> <input
									type="date" class="form-control" name="DOB"
									placeholder="Ngày sinh" value="${user.dayOfBirth}">
							</div>

						</div>
						<br>
						<div class="form-group">
							<div class="col-sm-3"></div>
							<div class="col-sm-3">
								<button type="submit" class="btn btn-primary" name="btnCancel">Huỷ</button>
							</div>
							<div class="col-sm-3">
								<input type="text" style="display: none;" name="code"
									value="${user.code}">
								<button type="submit" class="btn btn-primary" name="btnSave">Xác
									nhận</button>
							</div>

						</div>
						<!-- form-group // -->

					</form>
				</div>
				<div class="px-3  h-75 overflow-auto col-md-6"
					style="position: fixed; right: -20px; top: 50px;">
					<h4 class="text-center">Danh sách tài khoản</h4>
					<c:forEach items="${list}" var="item">

						<div class="col-md-6">
							<label class="labels">Tên tài khoản: ${item.username }</label>
						</div>
						<div class="col-md-12 pl-3">
							<label class="labels">Vai trò: ${item.role}</label>
						</div>

						<br>
					</c:forEach>


				</div>


				<!-- panel-body // -->
			</section>
			<!-- panel// -->


		</div>
		<!-- container// -->

	</div>

	<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="styles/bootstrap4/popper.js"></script>
	<script type="text/javascript" src="styles/bootstrap4/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="plugins/Isotope/isotope.pkgd.min.js"></script>
	<script type="text/javascript"
		src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
	<script type="text/javascript" src="plugins/easing/easing.js"></script>
	<script type="text/javascript"
		src="plugins/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
</body>
</html>