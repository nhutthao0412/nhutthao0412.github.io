<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Quên mật khẩu</title>
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
				<h3>Phương thức xác nhận</h3>

				<form class="form-horizontal" role="form" action="quenMatKhau"
					method="post">
					<div class="form-group">
						<label class="col-lg-3 control-label">Nhập Username:</label>
						<div class="col-lg-8">
							<input class="form-control" type="text" name="username"
								placeholder="Nhập Username" required="required">
						</div>
					</div>

					<div class="form-group">
						<label class="col-lg-3 control-label">Email lấy lại mật khẩu:</label>
						<div class="col-lg-8">
							<input class="form-control" type="email" name="email"
								placeholder="Nhập email" value="" required="required">
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-3 control-label"></label>
						<div class="col-md-8">
							<button type="submit" class="btn btn-primary">Quên mật
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
</body>
</html>