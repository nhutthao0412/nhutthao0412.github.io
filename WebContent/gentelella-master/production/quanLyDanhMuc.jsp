<%@page import="model.CategoryGuitar"%>
<%@page import="dao.DanhMucDAOImpl"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="model.ConnectToDatabase"%>
<%@page import="model.ProductGuitar"%>
<%@page import="dao.ProductDAOImpl"%>
<%@page import="java.text.NumberFormat"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Quản lý danh mục</title>

<!-- Bootstrap -->
<link href="../vendors/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome -->
<link href="../vendors/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<!-- NProgress -->
<link href="../vendors/nprogress/nprogress.css" rel="stylesheet">
<!-- iCheck -->
<link href="../vendors/iCheck/skins/flat/green.css" rel="stylesheet">
<!-- Datatables -->
<link
	href="../vendors/datatables.net-bs/css/dataTables.bootstrap.min.css"
	rel="stylesheet">
<link
	href="../vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css"
	rel="stylesheet">
<link
	href="../vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css"
	rel="stylesheet">
<link
	href="../vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css"
	rel="stylesheet">
<link
	href="../vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css"
	rel="stylesheet">

<!-- Custom Theme Style -->
<link href="../build/css/custom.min.css" rel="stylesheet">

<link href="../production/fontawesome-free-5.15.3-web/css/all.css"
	rel="stylesheet">

</head>

<body class="nav-md">

	<%
		DanhMucDAOImpl danhMucDao = new DanhMucDAOImpl();
	%>


	<div class="container body">
		<div class="main_container">

			<jsp:include page="headerAdmin/headerAdmin.jsp"></jsp:include>
			<jsp:include page="topAdmin/topAdmin.jsp"></jsp:include>

			<!-- page content -->

			<div class="right_col" role="main">
				<div class="">
					<div class="row">

						<div class="col-md-12 col-sm-12 col-xs-12">
							<div class="x_panel">
								<div class="x_title">
									<h2>Thông tin danh mục</h2>
									<ul class="nav navbar-right panel_toolbox">
										<li><a class="collapse-link"><i
												class="fa fa-chevron-up"></i></a></li>
										<li class="dropdown"><a href="#" class="dropdown-toggle"
											data-toggle="dropdown" role="button" aria-expanded="false"><i
												class="fa fa-wrench"></i></a>
											<ul class="dropdown-menu" role="menu">

											</ul></li>
										<li><a class="close-link"><i class="fa fa-close"></i></a>
										</li>

									</ul>
									<div class="clearfix"></div>
								</div>

								<div class="x_content">
									<p class="text-muted font-13 m-b-30">Quản lý danh sách Danh
										mục Guitar có trong website Đàn Việt</p>

									<a href="addCategoryGuitar.jsp">
										<button>Thêm Danh mục</button>
									</a>


									<table id="datatable-buttons"
										class="table table-striped table-bordered">
										<thead>
											<tr>
												<th>Mã danh mục</th>
												<th>Tên loại Guitar</th>
												<th>Danh mục cha</th>
												<th>Tình trạng</th>
												<th>Quản lý</th>
											</tr>
										</thead>
										<tbody>
											<%
												ConnectToDatabase con = new ConnectToDatabase();
											ResultSet rs = con.selectData("select * from CategoryGuitar");
											while (rs.next()) {
											%>
											<tr>
												<td><%=rs.getString(1)%></td>
												<td><%=rs.getString(2)%></td>
												<td><%=rs.getString(4)%></td>

												<td>
													<%
														if (rs.getInt(3) == 1) {
													%>
													<center>
														<i style="color: red; font-size: 20px"
															class="fas fa-check-circle"></i>
													</center> <%
 	} else {
 %><center>
														<i style="color: #b21f2d; font-size: 20px"
															class="fas fa-ban"></i>
													</center> <%
 	}
 %>
												</td>
												<td>
													<center>
														<a
															href="EditCategoryGuitar?maDanhMuc=<%=rs.getString(1)%>">
															<i style="font-size: 20px; margin-right: 15px"
															class="fas fa-tools"></i>
														</a> <a
															onclick="return confirm('Bạn có chắc chắn muốn xóa ??')"
															href="DeleteCategoryGuitar?maDanhMuc=<%=rs.getString(1)%>">
															<i style="font-size: 20px; color: red;"
															class="fas fa-trash-alt"></i>
														</a>
													</center>
												</td>
											</tr>
											<%
												}
											%>
										</tbody>
									</table>
								</div>
							</div>
						</div>

						<!-- 						// -->
						<div class="col-md-12 col-sm-12 col-xs-12">
							<div class="x_panel">

								<div class="x_content">
									<p class="text-muted font-13 m-b-30">Quản lý danh sách Danh
										mục Ukulele có trong website Đàn Việt</p>

									<a href="addCategoryUkulele.jsp">
										<button>Thêm Danh mục</button>
									</a>


									<table id="datatable"
										class="table table-striped table-bordered">
										<thead>
											<tr>
												<th>Mã danh mục</th>
												<th>Tên loại Guitar</th>
												<th>Danh mục cha</th>
												<th>Tình trạng</th>
												<th>Quản lý</th>
											</tr>
										</thead>


										<tbody>
											<%
												ConnectToDatabase con1 = new ConnectToDatabase();
											ResultSet rs1 = con1.selectData("select * from CategoryUkulele");
											while (rs1.next()) {
											%>
											<tr>
												<td><%=rs1.getString(1)%></td>
												<td><%=rs1.getString(2)%></td>
												<td><%=rs1.getString(4)%></td>

												<td>
													<%
														if (rs1.getInt(3) == 1) {
													%>
													<center>
														<i style="color: red; font-size: 20px"
															class="fas fa-check-circle"></i>
													</center> <%
 	} else {
 %><center>
														<i style="color: #b21f2d; font-size: 20px"
															class="fas fa-ban"></i>
													</center> <%
 	}
 %>
												</td>
												<td>
													<center>
														<a
															href="EditCategoryUkulele?maDanhMuc=<%=rs1.getString(1)%>">
															<i style="font-size: 20px; margin-right: 15px"
															class="fas fa-tools"></i>
														</a> <a
															onclick="return confirm('Bạn có chắc chắn muốn xóa ??')"
															href="DeleteCategoryUkulele?maDanhMuc=<%=rs1.getString(1)%>">
															<i style="font-size: 20px; color: red;"
															class="fas fa-trash-alt"></i>
														</a>
													</center>
												</td>
											</tr>
											</tr>
											<%
												}
											%>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<!-- 						// -->
					</div>
				</div>
			</div>

			<!-- /page content -->



		</div>
	</div>

	<!-- jQuery -->
	<script src="../vendors/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="../vendors/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- FastClick -->
	<script src="../vendors/fastclick/lib/fastclick.js"></script>
	<!-- NProgress -->
	<script src="../vendors/nprogress/nprogress.js"></script>
	<!-- iCheck -->
	<script src="../vendors/iCheck/icheck.min.js"></script>
	<!-- Datatables -->
	<script src="../vendors/datatables.net/js/jquery.dataTables.min.js"></script>
	<script
		src="../vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
	<script
		src="../vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
	<script
		src="../vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
	<script src="../vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
	<script src="../vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
	<script src="../vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
	<script
		src="../vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
	<script
		src="../vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
	<script
		src="../vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
	<script
		src="../vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
	<script
		src="../vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
	<script src="../vendors/jszip/dist/jszip.min.js"></script>
	<script src="../vendors/pdfmake/build/pdfmake.min.js"></script>
	<script src="../vendors/pdfmake/build/vfs_fonts.js"></script>

	<!-- Custom Theme Scripts -->
	<script src="../build/js/custom.min.js"></script>
</body>
</html>