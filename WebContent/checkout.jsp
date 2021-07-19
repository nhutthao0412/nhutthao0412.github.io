<%@page import="model.Users"%>
<%@page import="controller.Cart"%>
<%@page import="model.SanPham"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="model.ConnectToDatabase"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
	<div class="container" style="max-width: 960px;">
		<div class="py-5 text-center">
			<!-- 			<img class="d-block mx-auto mb-4" -->
			<!-- 				src="https://getbootstrap.com/docs/4.3/assets/brand/bootstrap-solid.svg" -->
			<!-- 				alt="" width="72" height="72"> -->
			<h2 style="margin-top: 20px; margin-bottom: 20px">THANH TOÁN</h2>
		</div>
		<%
			Cart c = (Cart) session.getAttribute("Cart");
		Users user = (Users) session.getAttribute("user");
		%>
		<div class="row">
			<div class="col-md-4 order-md-2 mb-4">
				<h4 class="d-flex justify-content-between align-items-center mb-3" style="margin-bottom: 20px">
					<span class="text-muted" >Giỏ hàng của bạn</span>
					<%=c.list().size()%><span class="badge badge-secondary badge-pill"></span>
				</h4>
				<ul class="list-group mb-3 sticky-top">
					<%
						if (c != null) {
						for (SanPham p : c.list()) {
					%>
					<li
						class="list-group-item d-flex justify-content-between lh-condensed"
						style="line-height: 1.25;">
						<div>
							<h6 class="my-0">
								<img src="<%=p.getImg()%>" width="80px">
								<%=p.getTenSanPham()%>
							</h6>
							<small class="text-muted">Số lượng: <%=p.getsoLuong()%></small>
						</div> <span class="text-muted"><%=nf.format(p.getGia())%>đ</span>
					</li>
					<%
						}
					}
					%>
					<li class="list-group-item d-flex justify-content-between"><span>Giá:
							(VND)</span> <strong><%=nf.format(c.total())%>đ</strong></li>
				</ul>
			</div>
			<div class="col-md-8 order-md-1">
				<h4 class="mb-3"></h4>
				<form class="needs-validation" novalidate="" action="receipt"
					method="post">
					<!-- <div class="row"> 
						<div class="col-md-6 mb-3">
							<label for="firstName">First name</label> <input type="text"
								class="form-control" id="firstName" placeholder="" value=""
								required="">
							
						</div>
						<div class="col-md-6 mb-3">
							<label for="lastName">Last name</label> <input type="text"
								class="form-control" id="lastName" placeholder="" value=""
								required="">
							
						</div>
					</div> -->
					<div class="mb-3">
						<label for="username">Username: </label>
						<div class="input-group">
							<div class="input-group-prepend"></div>
							<input type="text" class="form-control" id="username" required=""
								value="<%=user.getUsername()%>" name="username">

						</div>
						<div class="mb-3" style="margin-bottom: 20px">
							<label for="email">Email: <span class="text-muted"></span></label>
							<input type="email" class="form-control" id="email"
								value="<%=user.getEmail()%>" name="email">

						</div>
						<div class="mb-3" style="margin-bottom: 20px">
							<label for="phone">Số điện thoại: <span
								class="text-muted"></span></label> <input type="phone"
								class="form-control" value="<%=user.getSoDienThoai()%>"
								name="phone">

						</div>
						<div class="mb-3" style="margin-bottom: 20px" s>
							<label for="address">Địa chỉ: </label> <input type="text"
								class="form-control" id="address" value="<%=user.getDiaChi()%>"
								required="" name="address">

						</div>

						<hr class="mb-4">
						<button class="btn btn-primary btn-lg btn-block" type="submit">Tiếp
							tục thanh toán</button>
				</form>
			</div>
		</div>

	</div>


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
	<script type="text/javascript">
		// Example starter JavaScript for disabling form submissions if there are invalid fields
		(function() {
			'use strict'

			window.addEventListener('load', function() {
				// Fetch all the forms we want to apply custom Bootstrap validation styles to
				var forms = document.getElementsByClassName('needs-validation')

				// Loop over them and prevent submission
				Array.prototype.filter.call(forms, function(form) {
					form.addEventListener('submit', function(event) {
						if (form.checkValidity() === false) {
							event.preventDefault()
							event.stopPropagation()
						}
						form.classList.add('was-validated')
					}, false)
				})
			}, false)
		}())
	</script>

</body>
</html>