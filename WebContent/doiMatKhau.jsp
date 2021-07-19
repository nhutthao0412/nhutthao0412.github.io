<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Đổi mật khẩu</title>
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
				<h3>Đổi mật khẩu</h3>

				<form class="form-horizontal" role="form" action="doiMatKhau"
					method="post" id="doiMatKhau">
					<div class="form-group">
						<label class="col-lg-3 control-label">Nhập Username:</label>
						<div class="col-lg-8">
							<input class="form-control" type="text" name="username"
								placeholder="" required="required">
						</div>
					</div>

					<div class="form-group">
						<label class="col-lg-3 control-label">Nhập mật khẩu cũ:</label>
						<div class="col-lg-8">
							<input class="form-control" type="password" name="oldPass"
								placeholder="" required="required">
						</div>
					</div>

					<div class="form-group">
						<label class="col-lg-3 control-label">Nhập mật khẩu mới:</label>
						<div class="col-lg-8">
							<input class="form-control" type="password" name="newPass"
								placeholder="" required="required" id="password">
						</div>
					</div>

					<div class="form-group">
						<label class="col-lg-3 control-label">Nhập lại mật khẩu
							mới:</label>
						<div class="col-lg-8">
							<input class="form-control" type="password" name="re_newPass"
								placeholder="" required="required" id="re_password">
						</div>
					</div>
					<p id="error" style="color: red;"></p>
					<div class="form-group">
						<label class="col-md-3 control-label"></label>
						<div class="col-md-8">
							<button type="submit" class="btn btn-primary">Đổi mật
								khẩu</button>
							<a href="index.jsp">
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

			$('#doiMatKhau').bind({
				'submit' : function() {
					if ($('#password').val() != $('#re_password').val()) {
						$('#error').html("Mật khẩu nhập lại không chính xác");
						return false;
					}

					return true;
				},
				'keydown' : function() {
					if ($('#password').val() == $('#re_password').val()) {
						$('#error').html("");
					}

				}
			})
		});
	</script>
</body>
</html>