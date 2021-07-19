
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
	<div class="container">
		<div class="row">
			<div class="col-sm-12 col-md-10 col-md-offset-1">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>Tên sản phẩm</th>
							<th>Số lượng</th>
							<th class="text-center">Giá</th>
							<th class="text-center">Tổng tiền</th>
							<th> </th>
						</tr>
					</thead>
					<tbody>
						<%
						Cart cart = (Cart) session.getAttribute("Cart");
						if (cart != null) {
							for (SanPham p : cart.list()) {
						%>
						<tr>
							<td class="col-sm-8 col-md-6">
								<div class="media">
									<a class="thumbnail pull-left" href="#"> <img
										class="media-object"
										src="<%=p.getImg() %>"
										style="width: 72px; height: 72px;">
									</a>
									<div class="media-body">
										<h4 class="media-heading">
											<a href="#"><%=p.getTenSanPham() %></a>
										</h4>
<!-- 										<h5 class="media-heading"> -->
<%-- 											by <a href="#"><%=p.getDanhMuc() %></a> --%>
<!-- 										</h5> -->
										<span>Trạng thái: </span><span class="text-success"><strong>
												Còn hàng</strong></span>
									</div>
								</div>
							</td>
							<td class="col-sm-1 col-md-1" style="text-align: center"><input
								type="email" class="form-control" id="exampleInputEmail1"
								value="<%=p.getsoLuong()%>"></td>
							<td class="col-sm-1 col-md-1 text-center"><strong><%=nf.format(p.getGia())  %>đ</strong></td>
							<td class="col-sm-1 col-md-1 text-center"><strong><%=nf.format(p.total()) %>đ</strong></td>
							<td class="col-sm-1 col-md-1">
								<a href="<%="Remove?id="+p.getMaSanPham()%>" class="btn btn-danger"><i
                                                class="fa fa-shopping-cart"></i>Xoá sản phẩm</a>
							</td>
						</tr>
						<%
						}
						
						%>
						
						<tr>
							<td> </td>
							<td> </td>
							<td> </td>
							<td><h5>Tổng số tiền:</h5></td>
							<td class="text-right"><h5>
									<strong><%=cart!=null ? cart.total() : 0 %>đ</strong>
								</h5></td>
						</tr>
<!-- 						<tr> -->
<!-- 							<td> </td> -->
<!-- 							<td> </td> -->
<!-- 							<td> </td> -->
<!-- 							<td><h5>Estimated shipping</h5></td> -->
<!-- 							<td class="text-right"><h5> -->
<!-- 									<strong>6000 đ </strong> -->
<!-- 								</h5></td> -->
<!-- 						</tr> -->
<!-- 						<tr> -->
<!-- 							<td> </td> -->
<!-- 							<td> </td> -->
<!-- 							<td> </td> -->
<!-- 							<td><h3>Total</h3></td> -->
<!-- 							<td class="text-right"><h3> -->
<%-- 									<strong><%=cart.total()+6 %>đ</strong> --%>
<!-- 								</h3></td> -->
<!-- 						</tr> -->
						<tr>
							<td> </td>
							<td> </td>
							<td> </td>
							<td>
								<a href="index.jsp" class="btn btn-primary"><i
                                                class="fa fa-shopping-cart"></i>Tiếp tục mua sắm</a>
							</td>
							<td>
								<a href="checkout">
								<button type="button" class="btn btn-success">
									Thanh toán <span class="glyphicon glyphicon-play"></span>
								</button>
							</a>
							</td>
						</tr>
						<%
						}
						else{
							
						%>
						<tr>
							<td> </td>
							<td> </td>
							<td> </td>
							<td><h5>Tổng số tiền</h5></td>
							<td class="text-right"><h5>
									<strong>0đ</strong>
								</h5></td>
						</tr>
<!-- 						<tr> -->
<!-- 							<td> </td> -->
<!-- 							<td> </td> -->
<!-- 							<td> </td> -->
<!-- 							<td><h5>Estimated shipping</h5></td> -->
<!-- 							<td class="text-right"><h5> -->
<!-- 									<strong>6000 đ </strong> -->
<!-- 								</h5></td> -->
<!-- 						</tr> -->
<!-- 						<tr> -->
<!-- 							<td> </td> -->
<!-- 							<td> </td> -->
<!-- 							<td> </td> -->
<!-- 							<td><h3>Total</h3></td> -->
<!-- 							<td class="text-right"><h3> -->
<!-- 									<strong>6000 đ</strong> -->
<!-- 								</h3></td> -->
<!-- 						</tr> -->
						<tr>
							<td> </td>
							<td> </td>
							<td> </td>
							<td>
							<a href="index.jsp">
								<button type="button" class="btn btn-default">
									<span class="glyphicon glyphicon-shopping-cart"></span>
									Tiếp tục mua sắm
								</button>
								</a>
							</td>
							<td>
							<a href="checkout">
								<button type="button" class="btn btn-success">
									Thanh toán <span class="glyphicon glyphicon-play"></span>
								</button>
							</a>
							</td>
						</tr>
						<%} %>
					</tbody>
				</table>
			</div>
		</div>
	</div>
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