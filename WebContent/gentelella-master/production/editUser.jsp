<%@page import="model.ConnectToDatabase"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Sửa users</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
</head>
<body>

	<div class="container">
		<hr>

		<div class="row">

			<!-- edit form column -->

			<div class="col-md-9 personal-info">
				<h3>Thông tin tài khoản</h3>


				<form class="form-horizontal" role="form" action="SuaTK"
					method="post">


					<div class="form-group">
						<label class="col-lg-3 control-label">Tên tài khoản:</label>
						<div class="col-lg-8">
							<input class="form-control" type="text" name="username"
								placeholder="Nhập tên tài khoản"
								value="<%ServletContext context = request.getServletContext();
out.print(context.getAttribute("username"));%>"
								required="required">
						</div>
					</div>

					<div class="form-group">
						<label class="col-lg-3 control-label">Tên người dùng:</label>
						<div class="col-lg-8">
							<input class="form-control" type="text" name="name"
								placeholder="Nhập tên người dùng"
								value="<%ServletContext context2 = request.getServletContext();
out.print(context2.getAttribute("name"));%>"
								required="required">
						</div>
					</div>
					<div class="form-group">
						<label class="col-lg-3 control-label">Địa chỉ:</label>
						<div class="col-lg-8">
							<input class="form-control" type="text" name="diaChi"
								placeholder="Nhập địa chỉ"
								value="<%ServletContext con = request.getServletContext();
out.print(con.getAttribute("diaChi"));%>"
								required="required">
						</div>
					</div>

					<div class="form-group">
						<label class="col-lg-3 control-label">Email:</label>
						<div class="col-lg-8">
							<input class="form-control" type="email" name="email"
								placeholder="Nhập email"
								value="<%ServletContext context4 = request.getServletContext();
out.print(context4.getAttribute("email"));%>"
								required="required">
						</div>
					</div>
					<div class="form-group">
						<label class="col-lg-3 control-label">Sdt:</label>
						<div class="col-lg-8">
							<input class="form-control" type="text" name="sdt"
								placeholder="Nhập số điện thoại"
								value="<%ServletContext context5 = request.getServletContext();
out.print(context5.getAttribute("sdt"));%>"
								required="required">
						</div>
					</div>
					<div class="form-group">
						<label class="col-lg-3 control-label">Cấp bậc:</label>
						<div class="col-lg-8">
							<input class="form-control" type="text" name="level"
								placeholder="Nhập level"
								value="<%ServletContext context3 = request.getServletContext();
out.print(context3.getAttribute("level"));%>"
								required="required"> <span>1-Customer / 2-Admin</span>

						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label">Tình trạng:</label>
						<div class="col-md-8">
							<input class="form-control" type="text" name="active"
								placeholder="Nhập tình trạng tài khoản"
								value="<%ServletContext context6 = request.getServletContext();
out.print(context6.getAttribute("active"));%>"
								required="required"> <span>0-Chưa kiểm duyệt /
								1-Đã kiểm duyệt</span>

						</div>
					</div>

					<div class="form-group">
						<label class="col-md-3 control-label"></label>
						<div class="col-md-8">
							<button type="submit" class="btn btn-primary">Xác nhận</button>
							<a href="quanLyTTUsers.jsp">
								<button type="button" class="btn btn-primary">Hủy</button>
							</a>
						</div>
					</div>

				</form>
			</div>
		</div>

	</div>
	<hr>

</body>
</html>