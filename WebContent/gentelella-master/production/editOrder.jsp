<%@ page language="java" contentType="text/html; charset = UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Cập nhật TT đơn hàng</title>
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
				<h3>Thông tin đơn hàng</h3>

				<form class="form-horizontal" role="form" action="EditOrder"
					method="post">
					
					<div class="form-group">
						<label class="col-md-3 control-label">Trạng thái:</label>
						<div class="col-md-8">
							<select class="form-control" name="active">
								<option value="0">Chưa tiếp nhận</option>
								<option value="1">Đã tiếp nhận</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label"></label>
						<div class="col-md-8">
							<button type="submit" class="btn btn-primary">Cập nhật trạng thái</button>
							<a href="quanLyDonHang.jsp">
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
