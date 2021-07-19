<%@page import="model.Users"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Trang chủ</title>
</head>
<body>
	<div class="col-md-3 left_col">
		<div class="left_col scroll-view">
			<div class="navbar nav_title" style="border: 0;">
				<a href="index.jsp" class="site_title"><i class="fa fa-paw"></i>
					<span>Đàn Việt</span></a>
			</div>

			<div class="clearfix"></div>

			<!-- menu profile quick info -->
			<div class="profile clearfix">
				<div class="profile_pic">
					<img src="images/img.jpg" alt="..." class="img-circle profile_img">
				</div>
				<div class="profile_info">
					<%
						HttpSession user = request.getSession(true);
					if (user.getAttribute("user") != null) {
					%>
					<span>Xin chào, </span>
					<h2>
						<%
							Users u = (Users) session.getAttribute("user");
						if (u != null) {
							out.print(u.getTenKH());
						}
						%>
					</h2>
					<%
						}
					%>
				</div>
			</div>
			<!-- /menu profile quick info -->

			<br />

			<!-- sidebar menu -->
			<div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
				<div class="menu_section">
					<ul class="nav side-menu">
						<li><a href="http://localhost:8080/WebsiteBanHang/index.jsp"><i
								class="fa fa-home"></i> Trang chủ <span
								class="fa fa-chevron-down"></span></a></li>
						<li><a><i class="fa fa-table"></i> Quản lý <span
								class="fa fa-chevron-down"></span></a>
							<ul class="nav child_menu">
								<li><a href="tables_dynamic.jsp">Quản lý sản phẩm</a></li>
								<li><a href="">Quản lý bình luận</a></li>
								<li><a href="quanLyTTUsers.jsp">Quản lý thông tin User</a></li>
								<li><a href="quanLyDanhMuc.jsp">Quản lý danh mục sản
										phẩm</a></li>
								<li><a href="quanLyDonHang.jsp">Quản lý đơn hàng</a></li>
							</ul></li>
						<li><a><i class="fa fa-bar-chart-o"></i> Thống kê <span
								class="fa fa-chevron-down"></span></a>
							<ul class="nav child_menu">
								<li><a href="chartjs.jsp">Chart JS</a></li>
								<li><a href="chartjs2.jsp">Chart JS2</a></li>
								<li><a href="morisjs.jsp">Moris JS</a></li>
							</ul></li>
					</ul>
				</div>
			</div>
			<!-- /sidebar menu -->
			<!-- /menu footer buttons -->
			<div class="sidebar-footer hidden-small">
				<a data-toggle="tooltip" data-placement="top" title="Settings">
					<span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
				</a> <a data-toggle="tooltip" data-placement="top" title="FullScreen">
					<span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
				</a> <a data-toggle="tooltip" data-placement="top" title="Lock"> <span
					class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
				</a> <a data-toggle="tooltip" data-placement="top" title="Logout"
					href="login.html"> <span class="glyphicon glyphicon-off"
					aria-hidden="true"></span>
				</a>
			</div>
			<!-- /menu footer buttons -->

		</div>
	</div>
</body>
</html>