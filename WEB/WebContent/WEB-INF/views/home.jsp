<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   	<link rel="stylesheet" href="css/home.css">
    <link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
    <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
    <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
    <link rel="stylesheet" type="text/css" href="plugins/jquery-ui-1.12.1.custom/jquery-ui.css">
    
    <title>Document</title>
</head>

<body>
    <div class="nav">
        <div class="nav__logo">
            <img src="https://images.unsplash.com/photo-1493612276216-ee3925520721?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1064&q=80"
                alt="logo">
        </div>
        <div class="nav__content">
            <div class="nav__content__item">
                <svg width="16" height="20" viewBox="0 0 16 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path
                        d="M14 4H12C12 1.79 10.21 0 8 0C5.79 0 4 1.79 4 4H2C0.9 4 0 4.9 0 6V18C0 19.1 0.9 20 2 20H14C15.1 20 16 19.1 16 18V6C16 4.9 15.1 4 14 4ZM6 8C6 8.55 5.55 9 5 9C4.45 9 4 8.55 4 8V6H6V8ZM8 2C9.1 2 10 2.9 10 4H6C6 2.9 6.9 2 8 2ZM12 8C12 8.55 11.55 9 11 9C10.45 9 10 8.55 10 8V6H12V8Z"
                        fill="#A7B7DD" />
                </svg>
                <a href="#" class="nav-link">Sản phẩm</a>
            </div>
            <div class="nav__content__item">
                <svg width="18" height="18" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path
                        d="M1 10H7C7.55 10 8 9.55 8 9V1C8 0.45 7.55 0 7 0H1C0.45 0 0 0.45 0 1V9C0 9.55 0.45 10 1 10ZM1 18H7C7.55 18 8 17.55 8 17V13C8 12.45 7.55 12 7 12H1C0.45 12 0 12.45 0 13V17C0 17.55 0.45 18 1 18ZM11 18H17C17.55 18 18 17.55 18 17V9C18 8.45 17.55 8 17 8H11C10.45 8 10 8.45 10 9V17C10 17.55 10.45 18 11 18ZM10 1V5C10 5.55 10.45 6 11 6H17C17.55 6 18 5.55 18 5V1C18 0.45 17.55 0 17 0H11C10.45 0 10 0.45 10 1Z"
                        fill="#A7B7DD" />
                </svg>

                <a href="#" class="nav-link">Nhập hàng</a>
            </div>
            <div class="nav__content__item active">
                <svg width="29" height="28" viewBox="0 0 29 28" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <g filter="url(#filter0_d_3_26)">
                        <path
                            d="M10 16C8.9 16 8.01 16.9 8.01 18C8.01 19.1 8.9 20 10 20C11.1 20 12 19.1 12 18C12 16.9 11.1 16 10 16ZM4 1C4 1.55 4.45 2 5 2H6L9.6 9.59L8.25 12.03C7.52 13.37 8.48 15 10 15H21C21.55 15 22 14.55 22 14C22 13.45 21.55 13 21 13H10L11.1 11H18.55C19.3 11 19.96 10.59 20.3 9.97L23.88 3.48C23.9643 3.32843 24.0075 3.15747 24.0054 2.98406C24.0034 2.81064 23.956 2.64077 23.8681 2.49126C23.7803 2.34175 23.6549 2.21778 23.5043 2.13162C23.3538 2.04546 23.1834 2.00009 23.01 2H8.21L7.54 0.570001C7.45963 0.399307 7.3323 0.255042 7.17291 0.154095C7.01352 0.0531475 6.82867 -0.000302861 6.64 1.29085e-06H5C4.45 1.29085e-06 4 0.450001 4 1ZM20 16C18.9 16 18.01 16.9 18.01 18C18.01 19.1 18.9 20 20 20C21.1 20 22 19.1 22 18C22 16.9 21.1 16 20 16Z"
                            fill="#A7B7DD" />
                    </g>
                    <defs>
                        <filter id="filter0_d_3_26" x="0" y="0" width="28.0055" height="28" filterUnits="userSpaceOnUse"
                            color-interpolation-filters="sRGB">
                            <feFlood flood-opacity="0" result="BackgroundImageFix" />
                            <feColorMatrix in="SourceAlpha" type="matrix"
                                values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0" result="hardAlpha" />
                            <feOffset dy="4" />
                            <feGaussianBlur stdDeviation="2" />
                            <feComposite in2="hardAlpha" operator="out" />
                            <feColorMatrix type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.25 0" />
                            <feBlend mode="normal" in2="BackgroundImageFix" result="effect1_dropShadow_3_26" />
                            <feBlend mode="normal" in="SourceGraphic" in2="effect1_dropShadow_3_26" result="shape" />
                        </filter>
                    </defs>
                </svg>
                <a href="#" class="nav-link">Bán hàng</a>
            </div>
        </div>
        <div class="nav__footer">
            <h3>Customer support</h3>
            <p>
                Ask you query , place
                requests or important
                issues. Our support
                team will contact 24/7
                to you.
            </p>
        </div>
    </div>
    <!-- Main Content -->

    <div class="main_content">

        <!-- Products -->

        <div class="products_iso">
            <div class="row">
                <div class="col">

                    <!-- Product Grid -->

                    <div class="product-grid">

                        <!-- Product 1 -->

                        <div class="product-item men">
                            <div class="product discount product_filter">
                                <div class="product_image">
                                    <img src="images/product_1.png" alt="">
                                </div>
                                <div class="product_info">
                                    <h6 class="product_name"><a href="single.html">Fujifilm X100T 16 MP Digital Camera
                                            (Silver)</a></h6>
                                    <div class="product_price">$520.00</div>
                                </div>
                            </div>
                        </div>

                        <!-- Product 2 -->

                        <div class="product-item women">
                            <div class="product product_filter">
                                <div class="product_image">
                                    <img src="images/product_2.png" alt="">
                                </div>
                                <div class="product_info">
                                    <h6 class="product_name"><a href="single.html">Samsung CF591 Series Curved 27-Inch
                                            FHD Monitor</a></h6>
                                    <div class="product_price">$610.00</div>
                                </div>
                            </div>
                        </div>

                        <!-- Product 3 -->

                        <div class="product-item women">
                            <div class="product product_filter">
                                <div class="product_image">
                                    <img src="images/product_3.png" alt="">
                                </div>
                                <div class="product_info">
                                    <h6 class="product_name"><a href="single.html">Blue Yeti USB Microphone Blackout
                                            Edition</a></h6>
                                    <div class="product_price">$120.00</div>
                                </div>
                            </div>
                        </div>

                        <!-- Product 4 -->

                        <div class="product-item accessories">
                            <div class="product product_filter">
                                <div class="product_image">
                                    <img src="images/product_4.png" alt="">
                                </div>
                                <div class="product_info">
                                    <h6 class="product_name"><a href="single.html">DYMO LabelWriter 450 Turbo Thermal
                                            Label Printer</a></h6>
                                    <div class="product_price">$410.00</div>
                                </div>
                            </div>
                        </div>

                        <!-- Product 5 -->

                        <div class="product-item women men">
                            <div class="product product_filter">
                                <div class="product_image">
                                    <img src="images/product_5.png" alt="">
                                </div>
                                <div class="favorite"></div>
                                <div class="product_info">
                                    <h6 class="product_name"><a href="single.html">Pryma Headphones, Rose Gold &
                                            Grey</a></h6>
                                    <div class="product_price">$180.00</div>
                                </div>
                            </div>
                        </div>

                        <!-- Product 6 -->

                        <div class="product-item accessories">
                            <div class="product discount product_filter">
                                <div class="product_image">
                                    <img src="images/product_6.png" alt="">
                                </div>
                                <div class="product_info">
                                    <h6 class="product_name"><a href="single.html">Fujifilm X100T 16 MP Digital Camera
                                            (Silver)</a></h6>
                                    <div class="product_price">$520.00</div>
                                </div>
                            </div>
                        </div>

                        <!-- Product 7 -->

                        <div class="product-item women">
                            <div class="product product_filter">
                                <div class="product_image">
                                    <img src="images/product_7.png" alt="">
                                </div>
                                <div class="favorite"></div>
                                <div class="product_info">
                                    <h6 class="product_name"><a href="single.html">Samsung CF591 Series Curved 27-Inch
                                            FHD Monitor</a></h6>
                                    <div class="product_price">$610.00</div>
                                </div>
                            </div>
                        </div>

                        <!-- Product 8 -->

                        <div class="product-item accessories">
                            <div class="product product_filter">
                                <div class="product_image">
                                    <img src="images/product_8.png" alt="">
                                </div>
                                <div class="favorite"></div>
                                <div class="product_info">
                                    <h6 class="product_name"><a href="single.html">Blue Yeti USB Microphone Blackout
                                            Edition</a></h6>
                                    <div class="product_price">$120.00</div>
                                </div>
                            </div>
                        </div>

                        <!-- Product 9 -->

                        <div class="product-item men">
                            <div class="product product_filter">
                                <div class="product_image">
                                    <img src="images/product_9.png" alt="">
                                </div>
                                <div class="product_info">
                                    <h6 class="product_name"><a href="single.html">DYMO LabelWriter 450 Turbo Thermal
                                            Label Printer</a></h6>
                                    <div class="product_price">$410.00</div>
                                </div>
                            </div>
                        </div>

                        <!-- Product 10 -->

                        <div class="product-item men">
                            <div class="product product_filter">
                                <div class="product_image">
                                    <img src="images/product_10.png" alt="">
                                </div>
                                <div class="favorite"></div>
                                <div class="product_info">
                                    <h6 class="product_name"><a href="single.html">Pryma Headphones, Rose Gold &
                                            Grey</a></h6>
                                    <div class="product_price">$180.00</div>
                                </div>
                            </div>
                        </div>

                        <!-- Product 11 -->

                        <div class="product-item women men">
                            <div class="product product_filter">
                                <div class="product_image">
                                    <img src="images/product_5.png" alt="">
                                </div>
                                <div class="favorite"></div>
                                <div class="product_info">
                                    <h6 class="product_name"><a href="single.html">Pryma Headphones, Rose Gold &
                                            Grey</a></h6>
                                    <div class="product_price">$180.00</div>
                                </div>
                            </div>
                        </div>

                        <!-- Product 12 -->

                        <div class="product-item accessories">
                            <div class="product discount product_filter">
                                <div class="product_image">
                                    <img src="images/product_6.png" alt="">
                                </div>
                                <div class="product_info">
                                    <h6 class="product_name"><a href="single.html">Fujifilm X100T 16 MP Digital Camera
                                            (Silver)</a></h6>
                                    <div class="product_price">$520.00</div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Product Sorting -->
                </div>
            </div>
        </div>
    </div>
       
    <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="styles/bootstrap4/popper.js"></script>
    <script type="text/javascript" src="styles/bootstrap4/bootstrap.min.js"></script>
    <script type="text/javascript" src="plugins/Isotope/isotope.pkgd.min.js"></script>
    <script type="text/javascript" src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
    <script type="text/javascript" src="plugins/easing/easing.js"></script>
    <script type="text/javascript" src="plugins/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
    <script type="text/javascript" src="js/categories_custom.js"></script>
    
</body>

</html>