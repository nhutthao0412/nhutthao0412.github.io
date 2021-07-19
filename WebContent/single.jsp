<%@page import="java.text.NumberFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="model.ConnectToDatabase"%>
<%@page import="dao.ProductDAOImpl"%>
<%@page import="model.ProductGuitar"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Chi tiết sản phẩm</title>
<!--/tags -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Elite Shoppy Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">
	
	
	
	
	
	
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } 









</script>
<!-- //tags -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<link rel="stylesheet" href="css/flexslider.css" type="text/css"
	media="screen" />
<link href="css/font-awesome.css" rel="stylesheet">
<link href="css/easy-responsive-tabs.css" rel='stylesheet'
	type='text/css' />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />

<!-- //for bootstrap working -->
<link
	href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800"
	rel="stylesheet">
<link
	href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic'
	rel='stylesheet' type='text/css'>

<script type="text/javascript"
	src="https://apis.google.com/js/plusone.js"></script>
</head>
<body>
	<%
		ProductDAOImpl sanphamDAO = new ProductDAOImpl();
	ProductGuitar productGuitar = sanphamDAO.getChiTietSanPham(request.getParameter("maSanPham"));
	NumberFormat nf = NumberFormat.getInstance();
	nf.setMinimumIntegerDigits(0);
	%>

	<!-- header-top -->
	<jsp:include page="header/header-top.jsp"></jsp:include>
	<!-- header-top -->

	<!-- header-bottom -->
	<jsp:include page="header/header-bottom.jsp"></jsp:include>
	<!-- header-bottom -->

	<!-- banner -->
	<jsp:include page="banner/banner.jsp"></jsp:include>
	<!-- //banner-top -->

	<!-- Modal1 -->
	<jsp:include page="modelLogin/modelLogin.jsp"></jsp:include>
	<!-- //Modal1 -->

	<!-- Modal2 -->
	<jsp:include page="modelRegistration/modelRegistration.jsp"></jsp:include>
	<!-- //Modal2 -->

	<!--/single_page-->
	<!-- /banner_bottom_agile_info -->
	<div class="page-head_agile_info_w3l">
		<div class="container">
			<h3>
				Trang <span>chi tiết sản phẩm </span>
			</h3>
			<!--/w3_short-->
			<div class="services-breadcrumb">
				<div class="agile_inner_breadcrumb">

					<ul class="w3_short">
						<li><a href="index.jsp">Trang chủ</a><i>|</i></li>
						<li>Chi tiết sản phẩm</li>
					</ul>
				</div>
			</div>
			<!--//w3_short-->
		</div>
	</div>

	<!-- banner-bootom-w3-agileits -->

	<div class="banner-bootom-w3-agileits">
		<div class="container">
			<div class="col-md-4 single-right-left ">
				<div class="grid images_3_of_2">
					<div class="flexslider">

						<ul class="slides">
							<li data-thumb="<%=productGuitar.getImg1()%>">
								<div class="thumb-image">
									<img src="<%=productGuitar.getImg1()%>" data-imagezoom="true"
										class="img-responsive">
								</div>
							</li>
							<li data-thumb="<%=productGuitar.getImg2()%>">
								<div class="thumb-image">
									<img src="<%=productGuitar.getImg2()%>" data-imagezoom="true"
										class="img-responsive">
								</div>
							</li>
							<li data-thumb="<%=productGuitar.getImg3()%>">
								<div class="thumb-image">
									<img src="<%=productGuitar.getImg3()%>" data-imagezoom="true"
										class="img-responsive">
								</div>
							</li>
						</ul>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
			<div class="col-md-8 single-right-left simpleCart_shelfItem">
				<h3><%=productGuitar.getTenSanPham()%></h3>
				<p>
					<span class="item_price"><%=nf.format(productGuitar.getGia())%>đ</span>
					<del><%=nf.format(productGuitar.getGiaKhuyenMai())%>đ
					</del>
				</p>
				<div class="rating1">
					<span class="starRating"> <input id="rating5" type="radio"
						name="rating" value="5"> <label for="rating5">5</label> <input
						id="rating4" type="radio" name="rating" value="4"> <label
						for="rating4">4</label> <input id="rating3" type="radio"
						name="rating" value="3" checked=""> <label for="rating3">3</label>
						<input id="rating2" type="radio" name="rating" value="2">
						<label for="rating2">2</label> <input id="rating1" type="radio"
						name="rating" value="1"> <label for="rating1">1</label>
					</span>
				</div>
				<div class="color-quality">
					<div class="color-quality-right">
						<h5 style="margin-top: 70px">Số lượng :</h5>
						<select id="country1" onchange="change_country(this.value)"
							class="frm-field required sect" style="margin-bottom: 50px">
							<option value="null">5 sản phẩm</option>
							<option value="null">6 sản phẩm</option>
							<option value="null">7 sản phẩm</option>
							<option value="null">10 sản phẩm</option>
						</select>
					</div>
				</div>
				<div class="occasion-cart">
					<div
						class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
						<form action="#" method="post">
							<fieldset>
								<input type="hidden" name="cmd" value="_cart"> <input
									type="hidden" name="add" value="1"> <input
									type="hidden" name="business" value=" "> <input
									type="hidden" name="item_name"
									value="<%=productGuitar.getTenSanPham()%>"> <input
									type="hidden" name="amount" value="<%=productGuitar.getGia()%>">
								<input type="hidden" name="discount_amount"
									value="<%=productGuitar.getGiaKhuyenMai()%>"> <input
									type="hidden" name="currency_code" value="VND"> <input
									type="hidden" name="return" value=" "> <input
									type="hidden" name="cancel_return" value=" "> <input
									type="submit" name="submit" value="Thêm vào giỏ hàng"
									class="button">
							</fieldset>
						</form>
					</div>

				</div>
				<ul
					class="social-nav model-3d-0 footer-social w3_agile_social single_page_w3ls">
					<li class="share">Chia sẻ :</li>
					<li><a href="#" class="facebook">
							<div class="front">
								<i class="fa fa-facebook" aria-hidden="true"></i>
							</div>
							<div class="back">
								<i class="fa fa-facebook" aria-hidden="true"></i>
							</div>
					</a></li>
					<li><a href="#" class="twitter">
							<div class="front">
								<i class="fa fa-twitter" aria-hidden="true"></i>
							</div>
							<div class="back">
								<i class="fa fa-twitter" aria-hidden="true"></i>
							</div>
					</a></li>
					<li><a href="#" class="instagram">
							<div class="front">
								<i class="fa fa-instagram" aria-hidden="true"></i>
							</div>
							<div class="back">
								<i class="fa fa-instagram" aria-hidden="true"></i>
							</div>
					</a></li>
					<li><a href="#" class="pinterest">
							<div class="front">
								<i class="fa fa-linkedin" aria-hidden="true"></i>
							</div>
							<div class="back">
								<i class="fa fa-linkedin" aria-hidden="true"></i>
							</div>
					</a></li>
				</ul>

			</div>
			<div class="clearfix"></div>
			<!-- /new_arrivals -->
			<div class="responsive_tabs_agileits">
				<div id="horizontalTab">
					<ul class="resp-tabs-list">
						<li>Mô tả</li>
						<li>Thông tin</li>
						<li>Bình luận</li>

					</ul>
					<div class="resp-tabs-container">
						<!--/tab_one-->
						<div class="tab1">

							<div class="single_page_agile_its_w3ls">
								<!-- 								<h6>Lorem ipsum dolor sit amet</h6> -->
								<p><%=productGuitar.getMoTa()%></p>
								
							</div>
						</div>
						<!--//tab_one-->

						<div class="tab3">
							<div class="single_page_agile_its_w3ls">
								<p><%=productGuitar.getInformation()%></p>
							</div>
						</div>

						<div class="tab2">
							

							<div id="fb-root"></div>
							<script async defer crossorigin="anonymous"
								src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v10.0&appId=2457894907762539&autoLogAppEvents=1"
								nonce="xehkqVB4"></script>
							<div class="fb-comments"
								data-href="http://localhost:8080/WebsiteBanHang/single.jsp"
								data-width="800" data-numposts="3"></div>
						</div>
					</div>
				</div>
			</div>

			<!-- //new_arrivals -->
			<!--/slider_owl-->

			<div class="w3_agile_latest_arrivals">
				<h3 class="wthree_text_info">
					Sản phẩm <span>liên quan</span>
				</h3>
				<%
					ConnectToDatabase con = new ConnectToDatabase();
				ResultSet rs = con.selectData("SELECT TOP 12 PERCENT * FROM ProductGuitar ORDER BY NEWID()");
				while (rs.next()) {
				%>
				<div class="col-md-3 product-men single">
					<div class="men-pro-item simpleCart_shelfItem">
						<div class="men-thumb-item">
							<img src="<%=rs.getString(9)%>" alt="" class="pro-image-front">
							<img src="<%=rs.getString(9)%>" alt="" class="pro-image-back">
							<div class="men-cart-pro">
								<div class="inner-men-cart-pro">
									<a href="single.jsp?maSanPham=<%=rs.getString(2)%>"
										class="link-product-add-cart">Xem chi tiết</a>
								</div>
							</div>
							<span class="product-new-top">Mới</span>

						</div>
						<div class="item-info-product ">
							<h4>
								<a href=""><%=rs.getString(3)%></a>
							</h4>
							<div class="info-product-price">
								<span class="item_price"><%=rs.getString(7)%>đ</span>
								<del><%=rs.getString(8)%>đ
								</del>
							</div>
							<div
								class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
								<form action="#" method="post">
									<fieldset>
										<input type="hidden" name="cmd" value="_cart"> <input
											type="hidden" name="add" value="1"> <input
											type="hidden" name="business" value=" "> <input
											type="hidden" name="item_name" value="<%=rs.getString(3)%>">
										<input type="hidden" name="amount"
											value="<%=rs.getString(7)%>"> <input type="hidden"
											name="discount_amount" value="<%=rs.getString(8)%>">
										<input type="hidden" name="currency_code" value="VND">
										<input type="hidden" name="return" value=" "> <input
											type="hidden" name="cancel_return" value=" "> <input
											type="submit" name="submit" value="Thêm vào giỏ hàng"
											class="button">
									</fieldset>
								</form>
							</div>

						</div>
					</div>
				</div>
				<%
					}
				%>
				<div class="clearfix"></div>
				<!--//slider_owl-->
			</div>
		</div>
	</div>
	<!--//single_page-->

	<!-- footer -->
	<footer>
		<jsp:include page="footer/footerlevel1.jsp"></jsp:include>
	</footer>
	<!-- //footer -->

	<!-- login -->
	<div class="modal fade" id="myModal4" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content modal-info">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body modal-spa">
					<div class="login-grids">
						<div class="login">
							<div class="login-bottom">
								<h3>Sign up for free</h3>
								<form>
									<div class="sign-up">
										<h4>Email :</h4>
										<input type="text" value="Type here"
											onfocus="this.value = '';"
											onblur="if (this.value == '') {this.value = 'Type here';}"
											required="">
									</div>
									<div class="sign-up">
										<h4>Password :</h4>
										<input type="password" value="Password"
											onfocus="this.value = '';"
											onblur="if (this.value == '') {this.value = 'Password';}"
											required="">

									</div>
									<div class="sign-up">
										<h4>Re-type Password :</h4>
										<input type="password" value="Password"
											onfocus="this.value = '';"
											onblur="if (this.value == '') {this.value = 'Password';}"
											required="">

									</div>
									<div class="sign-up">
										<input type="submit" value="REGISTER NOW">
									</div>

								</form>
							</div>
							<div class="login-right">
								<h3>Sign in with your account</h3>
								<form>
									<div class="sign-in">
										<h4>Email :</h4>
										<input type="text" value="Type here"
											onfocus="this.value = '';"
											onblur="if (this.value == '') {this.value = 'Type here';}"
											required="">
									</div>
									<div class="sign-in">
										<h4>Password :</h4>
										<input type="password" value="Password"
											onfocus="this.value = '';"
											onblur="if (this.value == '') {this.value = 'Password';}"
											required=""> <a href="#">Forgot password?</a>
									</div>
									<div class="single-bottom">
										<input type="checkbox" id="brand" value=""> <label
											for="brand"><span></span>Remember Me.</label>
									</div>
									<div class="sign-in">
										<input type="submit" value="SIGNIN">
									</div>
								</form>
							</div>
							<div class="clearfix"></div>
						</div>
						<p>
							By logging in you agree to our <a href="#">Terms and
								Conditions</a> and <a href="#">Privacy Policy</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //login -->
	<a href="#home" class="scroll" id="toTop" style="display: block;">
		<span id="toTopHover" style="opacity: 1;"> </span>
	</a>
	<!-- js -->
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<!-- //js -->
	<script src="js/modernizr.custom.js"></script>
	<!-- Custom-JavaScript-File-Links -->
	<!-- cart-js -->
	<script src="js/minicart.min.js"></script>
	<script>
		// Mini Cart
		paypal.minicart.render({
			action : '#'
		});

		if (~window.location.search.indexOf('reset=true')) {
			paypal.minicart.reset();
		}
	</script>

	<!-- //cart-js -->
	<!-- single -->
	<script src="js/imagezoom.js"></script>
	<!-- single -->


	<!-- script for responsive tabs -->
	<script src="js/easy-responsive-tabs.js"></script>
	<script>
		$(document).ready(function() {
			$('#horizontalTab').easyResponsiveTabs({
				type : 'default', //Types: default, vertical, accordion           
				width : 'auto', //auto or any width like 600px
				fit : true, // 100% fit in a container
				closed : 'accordion', // Start closed if in accordion view
				activate : function(event) { // Callback function if tab is switched
					var $tab = $(this);
					var $info = $('#tabInfo');
					var $name = $('span', $info);
					$name.text($tab.text());
					$info.show();
				}
			});
			$('#verticalTab').easyResponsiveTabs({
				type : 'vertical',
				width : 'auto',
				fit : true
			});
		});
	</script>
	<!-- FlexSlider -->
	<script src="js/jquery.flexslider.js"></script>
	<script>
		// Can also be used with $(document).ready()
		$(window).load(function() {
			$('.flexslider').flexslider({
				animation : "slide",
				controlNav : "thumbnails"
			});
		});
	</script>
	<!-- //FlexSlider-->
	<!-- //script for responsive tabs -->
	<!-- start-smoth-scrolling -->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/jquery.easing.min.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop : $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			 */

			$().UItoTop({
				easingType : 'easeOutQuart'
			});

		});
	</script>
	<!-- //here ends scrolling icon -->

	<!-- for bootstrap working -->
	<script type="text/javascript" src="js/bootstrap.js"></script>
</body>
</html>
