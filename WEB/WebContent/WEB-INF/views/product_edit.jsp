<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<title>Chỉnh sửa sản phẩm</title>
</head>
<body>
	<div style="margin: 0 auto;">
		<div class="container">
			<section class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">Chỉnh sửa sản phẩm</h3>
				</div>
				<div class="panel-body">

					<form class="form-horizontal" role="form" method="post">

						<div class="form-group">
							<div class="col-sm-3"></div>
							<div class="col-sm-3">
								<label class="control-label small">Tên sản phẩm </label> <input
									type="text" class="form-control" name="name" id="name"
									placeholder="Tên sản phẩm" value="${product.name}">
							</div>
							<div class="col-sm-3">
								<label class="control-label small">Số lượng tồn</label> <input
									type="number" class="form-control" name="quantity"
									id="quantity" placeholder="Số lượng tồn"
									value="${product.quantity}">
							</div>
						</div>
						<!-- form-group // -->
						<div class="form-group">
							<div class="col-sm-3"></div>
							<div class="col-sm-3">
								<label class="control-label small">Giá thành </label> <input
									type="number" class="form-control" name="price" id="price"
									placeholder="Giá thành" value="${product.price}">
							</div>
							
						</div>
						
						<!-- form-group // -->
						<div class="form-group">
							<div class="col-sm-3"></div>
							<div class="col-sm-6">
								<label class="control-label small">Hình ảnh </label> <input
									type="text" class="form-control" name="imageURL" id="imageURL"
									placeholder="Hình ảnh" value="${product.imageURL}">
							</div>

						</div>
						<!-- form-group // -->

						<div class="form-group">
							<div class="col-sm-3"></div>
							<div class="col-sm-6">
								<label class="control-label small">Mô tả </label>
								<textarea class="form-control"
									name="description"> ${product.description} </textarea>
							</div>

						</div>
						<br>
						<div class="form-group">
							<div class="col-sm-3"></div>
							<div class="col-sm-3">
								<button type="submit" class="btn btn-primary" name="btnCancel">Huỷ</button>
							</div>
							<div class="col-sm-3">
								<input type="text" style="display: none;" id="productID"
												name="productID" value="${product.ID}">
								<button type="submit" class="btn btn-primary" name="btnSave">Xác nhận</button>
							</div>
							
						</div>
						<!-- form-group // -->
				</form>
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