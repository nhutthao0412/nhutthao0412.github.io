<%@page import="controller.Cart"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="model.ConnectToDatabase"%>
<%@page import="dao.DanhMucDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<div class="ban-top">
		<div class="container">
			<div class="top_nav_left">
				<nav class="navbar navbar-default">
					<div class="container-fluid">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed"
								data-toggle="collapse"
								data-target="#bs-example-navbar-collapse-1"
								aria-expanded="false">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
						</div>
						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse menu--shylock"
							id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav menu__list">
								<li class="active menu__item"><a class="menu__link"
									href="index.jsp">Trang chủ <span class="sr-only"></span></a></li>
								<li class=" menu__item menu__item--current"><a
									class="menu__link" href="about.jsp">Giới thiệu</a></li>
								<li class="dropdown menu__item"><a href="#"
									class="dropdown-toggle menu__link" data-toggle="dropdown"
									role="button" aria-haspopup="true" aria-expanded="false">Guitar<span
										class="caret"></span>
								</a>
									<ul class="dropdown-menu multi-column columns-3">
										<div class="agile_inner_drop_nav_info">
											<div class="col-sm-6 multi-gd-img1 multi-gd-text ">
												<a href="mens.jsp"><img src="images/imgGuitar.jpg"
													alt=" " /></a>
											</div>
											<%
												ConnectToDatabase con = new ConnectToDatabase();
											ResultSet rs = con.selectData("select tenLoaiGuitar,maDanhMuc from CategoryGuitar where danhMucCha='6'");
											while (rs.next()) {
											%>
											<div class="col-sm-3 multi-gd-img">
												<ul class="multi-column-dropdown">
													<li><a href="mens.jsp?maDanhMuc=<%=rs.getString(2)%>"><%=rs.getString(1)%></a></li>
												</ul>
											</div>
											<%
												}
											%>
											<div class="clearfix"></div>
										</div>
									</ul></li>
								<li class="dropdown menu__item"><a href="#"
									class="dropdown-toggle menu__link" data-toggle="dropdown"
									role="button" aria-haspopup="true" aria-expanded="false">Ukulele
										<span class="caret"></span>
								</a>
									<ul class="dropdown-menu multi-column columns-3">
										<div class="agile_inner_drop_nav_info">
											<div class="col-sm-3 multi-gd-img">
												<%
													ConnectToDatabase con1 = new ConnectToDatabase();
												ResultSet rs1 = con.selectData("select tenLoaiGuitar,maDanhMuc from CategoryUkulele where danhMucCha='14'");
												while (rs1.next()) {
												%>
												<ul class="multi-column-dropdown">
													<li><a
														href="womens.jsp?maDanhMuc=<%=rs1.getString(2)%>"><%=rs1.getString(1)%></a></li>
												</ul>
												<%
													}
												%>
											</div>

											<div class="col-sm-6 multi-gd-img multi-gd-text ">
												<a href="womens.jsp"><img src="images/imgUkulele.jpg"
													alt=" " /></a>
											</div>
											<div class="clearfix"></div>
										</div>
									</ul></li>
								<!-- 								<li class="menu__item dropdown"><a class="menu__link" -->
								<!-- 									href="#" class="dropdown-toggle" data-toggle="dropdown">Short -->
								<!-- 										Codes <b class="caret"></b> -->
								<!-- 								</a> -->
								<!-- 									<ul class="dropdown-menu agile_short_dropdown"> -->
								<!-- 										<li><a href="typography.html">Typography</a></li> -->
								<!-- 									</ul></li> -->
								<li class=" menu__item"><a class="menu__link"
									href="contact.jsp">Liên hệ</a></li>

								<li class=" menu__item" >
									<%
										Cart c = (Cart) session.getAttribute("Cart");
									int count = c == null ? 0 : c.list().size();
									%>
									<div style="margin-top: 12px;">
										<a class="menu__link" 
											href="cart.jsp">Giỏ hàng <%=c != null ? count : 0%>
										</a>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</nav>
			</div>


			<div class="clearfix"></div>
		</div>
	</div>
</body>
</html>