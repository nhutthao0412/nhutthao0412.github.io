<%@page import="java.text.NumberFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="model.ConnectToDatabase"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Trang chủ</title>
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
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/font-awesome.css" rel="stylesheet">
<link href="css/easy-responsive-tabs.css" rel='stylesheet'
	type='text/css' />
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

	<!-- banner -->
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1" class=""></li>
			<li data-target="#myCarousel" data-slide-to="2" class=""></li>
			<li data-target="#myCarousel" data-slide-to="3" class=""></li>
			<li data-target="#myCarousel" data-slide-to="4" class=""></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<div class="container">
					<div class="carousel-caption">
						<h3>
							Giảm Giá <span>Hot</span>
						</h3>
						<p>Đặc biệt trong hôm nay</p>
						<a class="hvr-outline-out button2" href="mens.jsp">Đến ngay </a>
					</div>
				</div>
			</div>
			<div class="item item2">
				<div class="container">
					<div class="carousel-caption">
						<h3>
							Bộ sưu tập <span>Guitar</span>
						</h3>
						<p>Sản phẩm mới nhất</p>
						<a class="hvr-outline-out button2" href="mens.jsp">Đến ngay </a>
					</div>
				</div>
			</div>
			<div class="item item3">
				<div class="container">
					<div class="carousel-caption">
						<h3>
							Bộ sưu tập <span>Ukulele</span>
						</h3>
						<p>Hot trong tuần</p>
						<a class="hvr-outline-out button2" href="womens.jsp">Đến ngay
						</a>
					</div>
				</div>
			</div>
			<div class="item item4">
				<div class="container">
					<div class="carousel-caption">
						<h3>
							Lựa chọn <span>tinh tế</span>
						</h3>
						<p>Đa dạng về xu hướng</p>
						<a class="hvr-outline-out button2" href="mens.jsp">Đến ngay </a>
					</div>
				</div>
			</div>
			<div class="item item5">
				<div class="container">
					<div class="carousel-caption">
						<h3>
							Sản phẩm <span>chính hãng</span>
						</h3>
						<p>Cam kết về chất lượng</p>
						<a class="hvr-outline-out button2" href="mens.jsp">Đến ngay </a>
					</div>
				</div>
			</div>
		</div>
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
		<!-- The Modal -->
	</div>

	<!-- //banner -->
	<div class="banner_bottom_agile_info">
		<div class="container">
			<div class="banner_bottom_agile_info_inner_w3ls">
				<div class="col-md-6 wthree_banner_bottom_grid_three_left1 grid">
					<figure class="effect-roxy">
						<img src="images/slide1.png" alt=" " class="img-responsive" />
						<figcaption>
							<h3>
								<span>Đ</span>àn Việt
							</h3>
							<p>Điểm đến mới</p>
						</figcaption>
					</figure>
				</div>
				<div class="col-md-6 wthree_banner_bottom_grid_three_left1 grid">
					<figure class="effect-roxy">
						<img src="images/slide2.jpg" alt=" " class="img-responsive" />
						<figcaption>
							<h3>
								<span>Đ</span>àn Việt
							</h3>
							<p>Lựa chọn tin cậy</p>
						</figcaption>
					</figure>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>

	<!-- schedule-bottom -->
	<div class="schedule-bottom">
		<div class="col-md-6 agileinfo_schedule_bottom_left">
			<img src="images/imgMid.jpg" alt=" " class="img-responsive" />
		</div>
		<div class="col-md-6 agileits_schedule_bottom_right">
			<div class="w3ls_schedule_bottom_right_grid">
				<h3>
					Giảm giá đến <span>50%</span> trong tuần này
				</h3>
				<p>Chương trình Sale Lớn 30/4, 1/5 được áp dụng cho những mã
					hàng Guitar, Ukulele Hot nhất năm 2021 tại hệ thống showroom nhạc
					cụ Toàn Quốc Đàn Việt</p>
				<div class="col-md-4 w3l_schedule_bottom_right_grid1">
					<i class="fa fa-user-o" aria-hidden="true"></i>
					<h4>Khách hàng</h4>
					<h5 class="counter">653</h5>
				</div>
				<div class="col-md-4 w3l_schedule_bottom_right_grid1">
					<i class="fa fa-calendar-o" aria-hidden="true"></i>
					<h4>Sự kiện</h4>
					<h5 class="counter">823</h5>
				</div>
				<div class="col-md-4 w3l_schedule_bottom_right_grid1">
					<i class="fa fa-shield" aria-hidden="true"></i>
					<h4>Giải thưởng</h4>
					<h5 class="counter">45</h5>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
	<!-- //schedule-bottom -->

	<!-- banner-bootom-w3-agileits -->
	<div class="banner-bootom-w3-agileits">
		<div class="container">
			<h3 class="wthree_text_info">
				XU HƯỚNG <span>HIỆN NAY</span>
			</h3>

			<div class="col-md-5 bb-grids bb-left-agileits-w3layouts">
				<a href="womens.jsp">
					<div class="bb-left-agileits-w3layouts-inner grid">
						<figure class="effect-roxy">
							<img src="images/xuhuong1.jpg" alt=" " class="img-responsive" />
							<figcaption>
								<h3>
									<span>G</span>iảm giá
								</h3>
								<p>tối đa 55%</p>
							</figcaption>
						</figure>
					</div>
				</a>
			</div>
			<div class="col-md-7 bb-grids bb-middle-agileits-w3layouts">
				<a href="mens.jsp">
					<div class="bb-middle-agileits-w3layouts grid">
						<figure class="effect-roxy">
							<img src="images/xuhuong2.jpg" alt=" " class="img-responsive" />
							<figcaption>
								<h3>
									<span>G</span>iảm giá
								</h3>
								<p>tối đa 55%</p>
							</figcaption>
						</figure>
					</div>
				</a> <a href="mens.jsp">
					<div class="bb-middle-agileits-w3layouts forth grid">
						<figure class="effect-roxy">
							<img src="images/xuhuong3.jpg" alt=" " class="img-responsive">
							<figcaption>
								<h3>
									<span>G</span>iảm giá
								</h3>
								<p>tối đa 55%</p>
							</figcaption>
						</figure>
					</div>
				</a>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>

	<!-- /new_arrivals -->
	<div class="new_arrivals_agile_w3ls_info">
		<div class="container">
			<h3 class="wthree_text_info">
				Sản phẩm <span>Đàn Việt</span>
			</h3>
			<div id="horizontalTab">
				<ul class="resp-tabs-list">
					<li>Guitar</li>
					<li>Ukulele</li>
					<li>Thịnh Hành</li>
					<li>Hot Sale</li>
				</ul>
				<div class="resp-tabs-container">
					<!--/tab_one-->
					<%
						ConnectToDatabase con = new ConnectToDatabase();
					%>
					<div class="tab1">
						<%
							ResultSet rs = con.selectData("select tenSanPham,gia,giaKhuyenMai,img,maSanPham,stt from guitarTrangChinh");
						%>
						<%
							while (rs.next()) {
						%>
						<div class="col-md-3 product-men">

							<div class="men-pro-item simpleCart_shelfItem">

								<div class="men-thumb-item">
									<img src="<%=rs.getString(4)%>" alt="" class="pro-image-front">
									<img src="<%=rs.getString(4)%>" alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single.jsp?maSanPham=<%=rs.getString(5)%>"
												class="link-product-add-cart">Xem Chi Tiết</a>
										</div>
									</div>
									<span class="product-new-top">Mới</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href=""><%=rs.getString(1)%></a>
									</h4>
									<div class="info-product-price">
										<span class="item_price"><%=nf.format(rs.getInt(2))%>đ</span>
										<del><%=nf.format(rs.getInt(3))%>đ
										</del>
									</div>
									<!-- 									<div -->
									<!-- 										class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2"> -->
									<!-- 										<form action="#" method="post"> -->
									<!-- 											<fieldset> -->
									<!-- 												<input type="hidden" name="cmd" value="_cart" /> <input -->
									<!-- 													type="hidden" name="add" value="1" /> <input type="hidden" -->
									<!-- 													name="business" value=" " /> <input type="hidden" -->
									<%-- 													name="item_name" value="<%=rs.getString(1)%>" /> <input --%>
									<%-- 													type="hidden" name="amount" value="<%=nf.format(rs.getInt(2))%>" /> --%>
									<!-- 												<input type="hidden" name="discount_amount" -->
									<%-- 													value="<%=nf.format(rs.getInt(3))%>" /> <input type="hidden" --%>
									<!-- 													name="currency_code" value="VND" /> <input type="hidden" -->
									<!-- 													name="return" value=" " /> <input type="hidden" -->
									<!-- 													name="cancel_return" value=" " /> <input type="submit" -->
									<!-- 													name="submit" value="Thêm vào giỏ hàng" class="button" /> -->
									<!-- 											</fieldset> -->
									<!-- 										</form> -->
									<!-- 									</div> -->
									<a href="<%="AddCart?id=" + rs.getString(6)%>"
										class="btn btn-default add-to-cart"><i
										class="fa fa-shopping-cart"></i>Add to cart</a>
								</div>
							</div>
						</div>
						<%
							}
						%>
						<div class="clearfix"></div>

					</div>
					<!--//tab_one-->
					<!--/tab_two-->
					<div class="tab2">
						<%
							ResultSet rs2 = con.selectData("select tenSanPham,gia,giaKhuyenMai,img,maSanPham,stt from ukuleleTrangChinh");
						%>
						<%
							while (rs2.next()) {
						%>
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img src="<%=rs2.getString(4)%>" alt="" class="pro-image-front">
									<img src="<%=rs2.getString(4)%>" alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="singleUkulele.jsp?maSanPham=<%=rs2.getString(5)%>"
												class="link-product-add-cart">Xem Chi Tiết</a>
										</div>
									</div>
									<span class="product-new-top">Mới</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href=""><%=rs2.getString(1)%></a>
									</h4>
									<div class="info-product-price">
										<span class="item_price"><%=nf.format(rs2.getInt(2))%>đ</span>
										<del><%=nf.format(rs2.getInt(3))%>đ
										</del>
									</div>

									<a href="<%="AddCart?id=" + rs2.getString(6)%>"
										class="btn btn-default add-to-cart btn-success"><i
										class="fa fa-shopping-cart"></i>Add to cart</a>

								</div>
							</div>
						</div>
						<%
							}
						%>
						<div class="clearfix"></div>
					</div>
					<!--//tab_two-->

					<div class="tab3">
						<%
							ResultSet rs3 = con.selectData("select tenSanPham,gia,giaKhuyenMai,img,maSanPham,stt from thinhHanhTrangChinh");
						%>
						<%
							while (rs3.next()) {
						%>
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img src="<%=rs3.getString(4)%>" alt="" class="pro-image-front">
									<img src="<%=rs3.getString(4)%>" alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single.jsp?maSanPham=<%=rs3.getString(5)%>"
												class="link-product-add-cart">Xem Chi Tiết</a>
										</div>
									</div>
									<span class="product-new-top">Mới</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href=""><%=rs3.getString(1)%></a>
									</h4>
									<div class="info-product-price">
										<span class="item_price"><%=nf.format(rs3.getInt(2))%>đ</span>
										<del><%=nf.format(rs3.getInt(3))%>đ
										</del>
									</div>
									<a href="<%="AddCart?id="+rs3.getString(6)%>" class="btn btn-default add-to-cart btn-success"><i
								                                                class="fa fa-shopping-cart"></i>Add to cart</a>

								</div>
							</div>
						</div>
						<%
							}
						%>
						<div class="clearfix"></div>
					</div>

					<div class="tab4">
						<%
							ResultSet rs4 = con.selectData("select tenSanPham,gia,giaKhuyenMai,img,maSanPham,stt from hotSaleTrangChinh");
						%>
						<%
							while (rs4.next()) {
						%>
						<div class="col-md-3 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img src="<%=rs4.getString(4)%>" alt="" class="pro-image-front">
									<img src="<%=rs4.getString(4)%>" alt="" class="pro-image-back">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
											<a href="single.jsp?maSanPham=<%=rs4.getString(5)%>"
												class="link-product-add-cart">Xem Chi Tiết</a>
										</div>
									</div>
									<span class="product-new-top">Mới</span>

								</div>
								<div class="item-info-product ">
									<h4>
										<a href=""><%=rs4.getString(1)%></a>
									</h4>
									<div class="info-product-price">
										<span class="item_price"><%=nf.format(rs4.getInt(2))%>đ</span>
										<del><%=nf.format(rs4.getInt(3))%>đ
										</del>
									</div>
									<a href="<%="AddCart?id="+rs4.getString(6)%>" class="btn btn-default add-to-cart"><i
                                                class="fa fa-shopping-cart"></i>Add to cart</a>

								</div>
							</div>
						</div>
						<%
							}
						%>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //new_arrivals -->

	<!-- /we-offer -->
	<div class="sale-w3ls">
		<div class="container">
			<h6>
				Chúng tôi giảm ngay cho bạn <span>40%</span>
			</h6>

			<a class="hvr-outline-out button2" href="men.jsp">Đến Ngay </a>
		</div>
	</div>
	<!-- //we-offer -->

	<!-- footer -->
	<footer>
		<jsp:include page="footer/footerlevel1.jsp"></jsp:include>
	</footer>
	<!-- //footer -->


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
	<!-- script for responsive tabs -->
	<script src="js/easy-responsive-tabs.js"></script>
	<script>
		$(document).ready(function() {
			$('#horizontalTab').easyResponsiveTabs({
				type : 'default',
				width : 'auto',
				fit : true,
				closed : 'accordion',
				activate : function(event) {
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
	<!-- //script for responsive tabs -->
	<!-- stats -->
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.countup.js"></script>
	<script>
		$('.counter').countUp();
	</script>
	<!-- //stats -->
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
