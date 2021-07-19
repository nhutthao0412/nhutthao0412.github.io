<%@page import="model.Users"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
</head>
<body>
	<!-- top navigation -->
	<div class="top_nav">
		<div class="nav_menu">
			<nav>
				<div class="nav toggle">
					<a id="menu_toggle"><i class="fa fa-bars"></i></a>
				</div>

				<ul class="nav navbar-nav navbar-right">
					<li class="">
						<%
							HttpSession user = request.getSession(true);
						if (user.getAttribute("user") != null) {
						%> <a href="javascript:;" class="user-profile dropdown-toggle"
						data-toggle="dropdown" aria-expanded="false"> <img
							src="images/img.jpg" alt=""> <%
 	Users u = (Users) session.getAttribute("user");
 if (u != null) {
 	out.print(u.getTenKH());
 }
 %> <span class=" fa fa-angle-down"></span>
					</a> <%
 	}
 %>
						<ul class="dropdown-menu dropdown-usermenu pull-right">
							<li><a href=""> Thông tin</a></li>
							<li><a href=""> <span
									class="badge bg-red pull-right"></span> <span>Cài đặt</span>
							</a></li>
							<li><a href="">Giúp đỡ</a></li>
							<li><a href="http://localhost:8080/WebsiteBanHang/DangXuat"><i class="fa fa-sign-out pull-right"></i>
									Đăng xuất</a></li>
						</ul>
					</li>

				</ul>
			</nav>
		</div>
	</div>
	<!-- /top navigation -->
</body>
</html>