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


<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js">
  </script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js">
  </script>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
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

            <button class="btn" href="home.htm" type="submit">
              Trang chủ
            </button>
            
          </form>

        </a>
      </div>
    </div>
    <div style="display: flex;">

      <a>
        <form action="profile.htm" method="post">
		
          <button class="btn" type="submit"name="btnProfile" href="profile.htm">
				${username}
          </button>
        </form>

      </a>
    </div>

  </div>
  <div class="wrapper d-flex align-items-stretch" style="overflow: hidden;">



    <!-- Sidebar  -->
    <nav id="sidebar" class="position-fixed h-100" style="overflow: hidden;">
      <ul class="list-unstyled components mb-5">
        <li>
          <a>
            <form action="product.htm" method="post">
				
              <button class="btn" type="submit" href="product.htm">
                Sản phẩm
              </button>
            </form>
          </a>
        </li>

        <li>
          <a>
            <form action="sell.htm" method="post">
            	
              <button class="btn" type="submit" href="sell.htm">
                Bán hàng
              </button>
            </form>

          </a>
        </li>

        <li>
          <a>
            <form action="import.htm" method="post">
           
              <button class="btn" type="submit" href="import.htm">
                Nhập hàng
              </button>
            </form>

          </a>
        </li>

        <li>
          <a>
            <form action="statistic.htm" method="post">
				
              <button class="btn" type="submit" href="statistic.htm">
                Thống kê
              </button>
            </form>
          </a>
        </li>

        <li>
          <a>
            <form action="login.htm" method="post">
              <button class="btn" type="submit" href="login.htm">
                Đăng xuất
              </button>
            </form>
          </a>
        </li>

      </ul>

    </nav>
    <!-- End Sidebar  -->


	<!-- Content -->
	<div id="content" class="p-4 p-md-5 pt-5" style="overflow: auto; margin-left: 210px;">

		<!-- Main content -->
		<div class="products_iso">
			<div class="promotion-products products">

				<!-- Promotional Products -->
				<h5>Sản phẩm khuyến mãi</h5>
				<div class="container  row">

					<c:forEach items="${listDis}" var="item">

						<div items="" var="product" class="product col-3">
							<div class="product-item men">
								<div class="product discount product_filter">
									<div class="product_image">
										<img src='${item.imageURL}' alt="">
									</div>
									<div class="product_info">
										<h6 class="product_name">
											${item.name}<a href="/single.html"></a>
										</h6>
										<div class="product_price">${item.price}$</div>
									</div>
								</div>
							</div>

						</div>

					</c:forEach>

				</div>

			</div>
			<div class="typical-products products">

				<!-- Typical Products Product -->
				<h5>Sản phẩm tiêu biểu</h5>
				<div class="container row">

					<c:forEach items="${listProduct}" var="item">

						<div items="" var="product" class="product col-3">
							<div class="product-item men">
								<div class="product discount product_filter">
									<div class="product_image">
										<img src='${item.imageURL}' alt="">
									</div>
									<div class="product_info">
										<h6 class="product_name">
											${item.name}<a href="/single.html"></a>
										</h6>
										<div class="product_price">${item.price}$</div>
									</div>
								</div>
							</div>

						</div>

					</c:forEach>

				</div>

			</div>
		</div>
		<!-- End Main Content -->

	</div>
	<!-- End Content -->



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
	<script type="text/javascript" src="js/categories_custom.js"></script>

</body>

</html>