<%@page import="java.text.NumberFormat"%>
<%@page import="model.CategoryGuitar"%>
<%@page import="dao.DanhMucDAOImpl"%>
<%@page import="model.ProductGuitar"%>
<%@page import="dao.ProductDAOImpl"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="model.ConnectToDatabase"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Guitar</title>
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
<!--//tags -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<link rel="stylesheet" type="text/css" href="css/jquery-ui.css">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/font-awesome.css" rel="stylesheet">
<!-- //for bootstrap working -->
<link
	href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800"
	rel="stylesheet">
<link
	href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic'
	rel='stylesheet' type='text/css'>
</head>
<body>
	<%
		NumberFormat nf = NumberFormat.getInstance();
	nf.setMinimumIntegerDigits(0);
	%>
	<!-- header-top -->
	<jsp:include page="header/header-top.jsp"></jsp:include>
	<!-- header-top -->

	<!-- header-bottom -->
	<jsp:include page="header/header-bottom2.jsp"></jsp:include>
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

	<!-- /banner_bottom_agile_info -->
	<div class="page-head_agile_info_w3l">
		<div class="container">
			<h3>
				Guitar <span>????n Vi???t </span>
			</h3>
			<!--/w3_short-->
			<div class="services-breadcrumb">
				<div class="agile_inner_breadcrumb">

					<ul class="w3_short">
						<li><a href="index.jsp">Trang ch???</a><i>|</i></li>
						<li>Guitar</li>
					</ul>
				</div>
			</div>
			<!--//w3_short-->
		</div>
	</div>

	<!-- banner-bootom-w3-agileits -->

	<div class="banner-bootom-w3-agileits">
		<div class="container">
			<!-- mens -->
			<div class="col-md-4 products-left">
				<div class="filter-price">
					<h3>
						L???c theo <span>Gi??</span>
					</h3>
					<ul class="dropdown-menu6">
						<li>
							<div id="slider-range"></div> <input type="text" id="amount"
							style="border: 0; color: #ffffff; font-weight: normal;" />
						</li>
					</ul>
				</div>

				<div class="css-treeview">
					<%
						DanhMucDAOImpl danhMucDAO = new DanhMucDAOImpl();
					%>
					<h4>DANH M???C GUITAR</h4>
					<ul class="tree-list-pad">
						<li><input type="checkbox" checked="checked" id="item-0" />
							<label for="item-0"><i class="fa fa-long-arrow-right"
								aria-hidden="true"></i> Hi???n th??? theo</label>

							<ul>
								<%
									for (CategoryGuitar danhMucCha : danhMucDAO.getListDanhMucCha()) {
								%>
								<li><a href="mens.jsp"> <label for="item-0-0"><i
											class="fa fa-long-arrow-right" aria-hidden="true"> </i> <%=danhMucCha.getTenLoaiGuitar()%></label></a>
									<ul>
										<%
											for (CategoryGuitar danhMucCon : danhMucDAO.getListDanhMucCon(danhMucCha.getMaDanhMuc())) {
										%>
										<li><a
											href="mens.jsp?maDanhMuc=<%=danhMucCon.getMaDanhMuc()%>"><%=danhMucCon.getTenLoaiGuitar()%></a></li>
										<%
											}
										%>

									</ul></li>
								<%
									}
								%>
							</ul></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>

			<div class="col-md-8 products-right">

				<div class="sort-grid">
					<div class="sorting">
						<h6>S???p x???p theo</h6>
						<select id="country1" onchange="change_country(this.value)"
							class="frm-field required sect">
							<option value="null">M???c ?????nh</option>
							<option value="null">T??n(A - Z)</option>
							<option value="null">T??n(Z - A)</option>
							<option value="null">Gi??(Th???p - Cao)</option>
							<option value="null">Gi??(Cao - Th???p)</option>
						</select>
						<div class="clearfix"></div>
					</div>
					<div class="sorting">
						<h6>Hi???n th???</h6>
						<select id="country2" onchange="change_country(this.value)"
							class="frm-field required sect">
							<option value="null">7</option>
							<option value="null">14</option>
							<option value="null">28</option>
							<option value="null">35</option>
						</select>
						<div class="clearfix"></div>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="men-wear-top">

					<div id="top" class="callbacks_container">
						<ul class="rslides" id="slider3">
							<li><img class="img-responsive"
								src="images/bannerGuitar1.jpg" alt=" " /></li>
							<li><img class="img-responsive"
								src="images/bannerGuitar2.jpg" alt=" " /></li>
							<li><img class="img-responsive"
								src="images/bannerGuitar3.jpg" alt=" " /></li>

						</ul>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="men-wear-bottom">
					<div class="col-sm-4 men-wear-left">
						<img class="img-responsive" src="images/bosuutapGuitar.jpg"
							alt=" " />
					</div>
					<div class="col-sm-8 men-wear-right">
						<h4>
							B??? s??u t???p <span>Guitar ????n Vi???t</span>
						</h4>
						<p>M???t n??m m???i l???i s???p ?????n v?? trong gi??y ph??t giao m??a h??n
							hoan n??y, ????n Vi???t xin ???????c tr??n tr???ng gi???i thi???u B??? S??u T???p
							Guitar Hot Nh???t N??m 2021. C??ng ch????ng tr??nh khuy???n m???i c?? th???
							Gi???m Gi?? t???i 40% cho nh???ng s???n ph???m trong B??? S??u T???p n??y.</p>
					</div>
					<div class="clearfix"></div>
				</div>


				<%
					ProductDAOImpl productDao = new ProductDAOImpl();
				%>

				<%
					String search = (String) request.getAttribute("search");
				for (ProductGuitar sp2 : productDao.searchListProductByNameUkulele(search)) {
				%>
				<div class="col-md-4 product-men">
					<div class="men-pro-item simpleCart_shelfItem">
						<div class="men-thumb-item">
							<img src="<%=sp2.getImg1()%>" alt="" class="pro-image-front">
							<img src="<%=sp2.getImg1()%>" alt="" class="pro-image-back">
							<div class="men-cart-pro">
								<div class="inner-men-cart-pro">
									<a href="single.jsp?maSanPham=<%=sp2.getMaSanPham()%>"
										class="link-product-add-cart">Xem Chi Ti???t</a>
								</div>
							</div>
							<span class="product-new-top">M???i</span>
						</div>
						<div class="item-info-product ">
							<h4>
								<a href=""><%=sp2.getTenSanPham()%></a>

							</h4>
							<div class="info-product-price">
								<span class="item_price"><%=nf.format(sp2.getGia())%>??</span>
								<del><%=nf.format(sp2.getGiaKhuyenMai())%>??
								</del>
							</div>
							<div
								class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
								<form action="#" method="post">
									<fieldset>
										<input type="hidden" name="cmd" value="_cart"> <input
											type="hidden" name="add" value="1"> <input
											type="hidden" name="business" value=" "> <input
											type="hidden" name="item_name"
											value="<%=sp2.getTenSanPham()%>"> <input
											type="hidden" name="amount" value="<%=sp2.getGia()%>">
										<input type="hidden" name="discount_amount"
											value="<%=sp2.getGiaKhuyenMai()%>"> <input
											type="hidden" name="currency_code" value="VND"> <input
											type="hidden" name="return" value=" "> <input
											type="hidden" name="cancel_return" value=" "> <input
											type="submit" name="submit" value="Th??m v??o gi??? h??ng"
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
				<!-- 				// -->
				<div class="clearfix"></div>
			</div>
		</div>

	</div>

	<!-- //mens -->
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
	<script src="js/responsiveslides.min.js"></script>
	<script>
		// You can also use "$(window).load(function() {"
		$(function() {
			// Slideshow 4
			$("#slider3").responsiveSlides({
				auto : true,
				pager : true,
				nav : false,
				speed : 500,
				namespace : "callbacks",
				before : function() {
					$('.events').append("<li>before event fired.</li>");
				},
				after : function() {
					$('.events').append("<li>after event fired.</li>");
				}
			});
		});
	</script>
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
	<!---->
	<script type='text/javascript'>
		//_$tag____ 
		$(window).load(
				function() {
					$("#slider-range").slider(
							{
								range : true,
								min : 0,
								max : 9000,
								values : [ 1000, 7000 ],
								slide : function(event, ui) {
									$("#amount").val(
											"$" + ui.values[0] + " - $"
													+ ui.values[1]);
								}
							});
					$("#amount").val(
							"$" + $("#slider-range").slider("values", 0)
									+ " - $"
									+ $("#slider-range").slider("values", 1));

				});//_$t
	</script>
	<script type="text/javascript" src="js/jquery-ui.js"></script>
	<!---->
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
