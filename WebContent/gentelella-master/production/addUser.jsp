<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Thêm user</title>
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

				<form class="form-horizontal" role="form" action="ThemTK"
					method="post" id="addUser">
					<div class="form-group">
						<label class="col-lg-3 control-label">Tên tài khoản:</label>
						<div class="col-lg-8">
							<input class="form-control" type="text" name="username"
								placeholder="Nhập tên tài khoản" required="required">
						</div>
					</div>
					<div class="form-group">
						<label class="col-lg-3 control-label">Mật khẩu:</label>
						<div class="col-lg-8">
							<input class="form-control" type="password" name="password"
								placeholder="Nhập mật khẩu" value="" required="required"
								id="password">
						</div>
					</div>
					<div class="form-group">
						<label class="col-lg-3 control-label">Nhập lại mật khẩu:</label>
						<div class="col-lg-8">
							<input class="form-control" type="password" name="re_password"
								placeholder="Nhập lại mật khẩu" value="" required="required"
								id="re_password">
						</div>
					</div>
					<p id="error" style="color: red;"></p>
					<div class="form-group">
						<label class="col-lg-3 control-label">Tên người dùng:</label>
						<div class="col-lg-8">
							<input class="form-control" type="text" name="name"
								placeholder="Nhập tên người dùng" required="required">
						</div>
					</div>
					<div class="form-group">
						<label class="col-lg-3 control-label">Địa chỉ:</label>
						<div class="col-lg-8">
							<input class="form-control" type="text" name="diaChi"
								placeholder="Nhập địa chỉ" value="" required="required">
						</div>
					</div>
					<div class="form-group">
						<label class="col-lg-3 control-label">Email:</label>
						<div class="col-lg-8">
							<input class="form-control" type="email" name="email"
								placeholder="Nhập email" value="" required="required" id="email">
						</div>
					</div>
					<p id="error_email" style="color: red;"></p>
					<div class="form-group">
						<label class="col-lg-3 control-label">Sdt:</label>
						<div class="col-lg-8">
							<input class="form-control" type="text" name="sdt"
								placeholder="Nhập số điện thoại" value="" required="required" id="phone">
						</div>
					</div>
					<p id="error_phone" style="color: red;"></p>
					<div class="form-group">
						<label class="col-lg-3 control-label">Cấp bậc:</label>
						<div class="col-lg-8">
							<input class="form-control" type="text" name="level"
								placeholder="Nhập level" value=""> <span>1-Customer
								/ 2-Admin</span>
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label">Tình trạng:</label>
						<div class="col-md-8">
							<input class="form-control" type="text" name="active"
								placeholder="Nhập tình trạng tài khoản" value=""> <span>0-Chưa
								kiểm duyệt / 1-Đã kiểm duyệt</span>
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label"></label>
						<div class="col-md-8">
							<button type="submit" class="btn btn-primary">Thêm tài
								khoản</button>

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

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
	<script type="text/javascript"
		src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.1/jquery.validate.min.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			function validatePhone(txtPhone) {
                var filter = /^[0-9-+]+$/;
                if (filter.test(txtPhone + "") && txtPhone.length >= 10 && txtPhone.length < 12) {
                    return true;
                } else {
                    return false;
                }
            }

			$('#addUser').bind({
				'submit' : function() {
					if ($('#password').val() != $('#re_password').val()) {
						$('#error').html("Mật khẩu nhập lại không chính xác");
						return false;
					}
					if (!validatePhone($('#phone').val())) {
                        $('#error_phone').html('Số điện thoại bạn nhập vào không phù hợp!!!');
                        return false;
                    }
					return true;
				},
				'keydown' : function() {
					if ($('#password').val() == $('#re_password').val()) {
						$('#error').html("");
					}
					if ($('#phone').val().length > 0) {
                        $('#error_phone').html('');
                    }
					
				}
			})
		});
	</script>
</body>
</html>