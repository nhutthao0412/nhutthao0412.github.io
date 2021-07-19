<%@ page language="java" contentType="text/html; charset = UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Chỉnh sửa TT danh mục Ukulele</title>
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
				<h3>Thông tin danh mục</h3>

				<form class="form-horizontal" role="form"
					action="EditCategoryUkulele" method="post">

					<div class="form-group">
						<label class="col-lg-3 control-label">Tên danh mục:</label>
						<div class="col-lg-8">
							<input class="form-control" type="text" name="tenLoaiGuitar"
								placeholder="Nhập tên sản phẩm" required="required"
								value="<%ServletContext context1 = request.getServletContext();
out.print(context1.getAttribute("tenLoaiGuitar"));%>">
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-3 control-label">Tình trạng:</label>
						<div class="col-md-8">
							<select class="form-control" name="active">
								<option value="0">Chưa kiểm duyệt</option>
								<option value="1">Đã kiểm duyệt</option>
							</select>
						</div>
					</div>

					<div class="form-group">
						<label class="col-lg-3 control-label">Danh mục cha:</label>
						<div class="col-lg-8">
							<select class="form-control" name="danhMucCha">
								<option value="14">Loại Đàn</option>
								<option value="15">Thương Hiệu</option>
								<option value="16">Khoảng Giá</option>
							</select>
						</div>
					</div>


					<div class="form-group">
						<label class="col-md-3 control-label"></label>
						<div class="col-md-8">
							<button type="submit" class="btn btn-primary">Thêm sản
								phẩm</button>
							<a href="quanLyDanhMuc.jsp">
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
