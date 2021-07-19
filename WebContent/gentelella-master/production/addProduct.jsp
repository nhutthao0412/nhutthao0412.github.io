<%@ page import="org.apache.catalina.servlet4preview.ServletContext"%>
<%@ page language="java" contentType="text/html; charset = UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Thêm sản phẩm</title>
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
				<h3>Thông tin sản phẩm</h3>

				<form class="form-horizontal" role="form" action="AddProduct"
					method="post">
					<div class="form-group">
						<label class="col-lg-3 control-label">Mã sản phẩm:</label>
						<div class="col-lg-8">
							<input class="form-control" type="text" name="maSanPham"
								placeholder="Nhập mã sản phẩm" required="required">
						</div>
					</div>
					<div class="form-group">
						<label class="col-lg-3 control-label">Tên sản phẩm:</label>
						<div class="col-lg-8">
							<input class="form-control" type="text" name="tenSanPham"
								placeholder="Nhập tên sản phẩm" required="required">
						</div>
					</div>

					<div class="form-group">
						<label class="col-lg-3 control-label">Danh Mục:</label>
						<div class="col-lg-8">
							<select class="form-control" name="maDanhMuc">
								<option value="1">Acoustic</option>
								<option value="2">Classic</option>
								<option value="3">Guitar Mini</option>
								<option value="4">Electric-Bass</option>
								<option value="5">Vọng Cổ</option>
								<option value="9">Ayer</option>
								<option value="10">Epiphone</option>
								<option value="11">Fender</option>
								<option value="12">Ibanez</option>
								<option value="13">NG</option>
								<option value="14">Dưới 1.5 triệu</option>
								<option value="15">Từ 1.5 - 3 triệu</option>
								<option value="16">Từ 3 - 5 triệu</option>
								<option value="17">Từ 5 - 10 triệu</option>
								<option value="18">Trên 10 triệu</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-lg-3 control-label">Thương hiệu:</label>
						<div class="col-lg-8">
							<select class="form-control" name="thuongHieu">
								<option value="9">Ayer</option>
								<option value="10">Epiphone</option>
								<option value="11">Fender</option>
								<option value="12">Ibanez</option>
								<option value="13">NG</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-lg-3 control-label">Khoảng giá:</label>
						<div class="col-lg-8">
							<select class="form-control" name="khoangGia">
								<option value="14">Dưới 1.5 triệu</option>
								<option value="15">Từ 1.5 - 3 triệu</option>
								<option value="16">Từ 3 - 5 triệu</option>
								<option value="17">Từ 5 - 10 triệu</option>
								<option value="18">Trên 10 triệu</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-lg-3 control-label">Giá:</label>
						<div class="col-lg-8">
							<input class="form-control" type="text" name="gia"
								placeholder="Nhập giá sản phẩm" value="" required="required">
						</div>
					</div>
					<div class="form-group">
						<label class="col-lg-3 control-label">Giá khuyến mãi:</label>
						<div class="col-lg-8">
							<input class="form-control" type="text" name="giaKhuyenMai"
								placeholder="Nhập giá KM sản phẩm" value="" required="required">
						</div>
					</div>


					<div class="form-group">
						<label class="col-lg-3 control-label">Hình ảnh chính:</label>
						<div class="col-lg-8">
							<input class="form-control" type="file" name="img1"
								placeholder="Nhập địa chỉ hình ảnh" value="" required="required">
						</div>
					</div>
					<div class="form-group">
						<label class="col-lg-3 control-label">Hình ảnh chi tiết 1:</label>
						<div class="col-lg-8">
							<input class="form-control" type="file" name="img2"
								placeholder="Nhập địa chỉ hình ảnh" value="" required="required">
						</div>
					</div>
					<div class="form-group">
						<label class="col-lg-3 control-label">Hình ảnh chi tiết 2:</label>
						<div class="col-lg-8">
							<input class="form-control" type="file" name="img3"
								placeholder="Nhập địa chỉ hình ảnh" value="" required="required">
						</div>
					</div>
					<div class="form-group">
						<label class="col-lg-3 control-label">Số lượng:</label>
						<div class="col-lg-8">
							<input class="form-control" type="text" name="soLuong"
								placeholder="Nhập số lượng sản phẩm" required="required">
						</div>
					</div>
					<div class="form-group">
						<label class="col-lg-3 control-label">Số lượng nhập:</label>
						<div class="col-lg-8">
							<input class="form-control" type="text" name="soLuongNhap"
								placeholder="Nhập số lượng đã nhập" required="required">
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label">Mô tả:</label>
						<div class="col-md-8">
							<input class="form-control" type="text" name="moTa"
								placeholder="Nhập mô tả về sản phẩm" value=""
								required="required">
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-3 control-label">Thông tin giới
							thiệu:</label>
						<div class="col-md-8">
							<input class="form-control" type="text" name="information"
								placeholder="Nhập thông tin về sản phẩm" value=""
								required="required">
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
						<label class="col-md-3 control-label"></label>
						<div class="col-md-8">
							<button type="submit" class="btn btn-primary">Thêm sản
								phẩm</button>
							<a href="tables_dynamic.jsp">
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