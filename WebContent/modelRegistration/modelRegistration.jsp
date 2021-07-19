<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
</head>
<body>
	
	<div class="modal fade" id="myModal2" tabindex="-1" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body modal-body-sub_agile">
					<div class="col-md-8 modal_body_left modal_body_left1">
						<h3 class="agileinfo_sign">Đăng ký</h3>
						<form action="XuLyDangKy" method="post" id="regis">
							<div class="styled-input agile-styled-input-top">
								<input type="text" name="username" required=""> <label>Tên
									đăng nhập</label> <span></span>
							</div>
							<div class="styled-input">
								<input type="password" name="password" required="" id="password">
								<label>Mật khẩu</label> <span></span>
							</div>
							<div class="styled-input">
								<input type="password" name="re_password" required=""
									id="re_password"> <label>Nhập lại mật khẩu</label> <span></span>
							</div>
							<p id="error" style="color: red;"></p>
							<div class="styled-input">
								<input type="text" name="name" required=""> <label>Tên
									khách hàng</label> <span></span>
							</div>
							<div class="styled-input">
								<input type="email" name="email" required=""> <label>Email</label>
								<span></span>
							</div>
							<div class="styled-input">
								<input type="text" name="sdt" required="" id="phone"> <label>Số
									điện thoại</label> <span></span>
							</div>
							<p id="error_phone" style="color: red;"></p>
							<div class="styled-input">
								<input type="text" name="diaChi" required=""> <label>Địa
									chỉ</label> <span></span>
							</div>

							<input type="submit" value="Đăng ký">

						</form>
						<ul
							class="social-nav model-3d-0 footer-social w3_agile_social top_agile_third">
							<li><a href="#" class="facebook">
									<div class="front">
										<i class="fa fa-facebook" aria-hidden="true"></i>
									</div>
									<div class="back">
										<i class="fa fa-facebook" aria-hidden="true"></i>
									</div>
							</a></li>
							<li><a href="#" class="twitter">
									<div class="front">
										<i class="fa fa-twitter" aria-hidden="true"></i>
									</div>
									<div class="back">
										<i class="fa fa-twitter" aria-hidden="true"></i>
									</div>
							</a></li>
							<li><a href="#" class="instagram">
									<div class="front">
										<i class="fa fa-instagram" aria-hidden="true"></i>
									</div>
									<div class="back">
										<i class="fa fa-instagram" aria-hidden="true"></i>
									</div>
							</a></li>
							<li><a href="#" class="pinterest">
									<div class="front">
										<i class="fa fa-linkedin" aria-hidden="true"></i>
									</div>
									<div class="back">
										<i class="fa fa-linkedin" aria-hidden="true"></i>
									</div>
							</a></li>
						</ul>
						<div class="clearfix"></div>

					</div>

					<div class="clearfix"></div>
				</div>
			</div>
			<!-- //Modal content-->
		</div>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
	<script type="text/javascript"
		src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.1/jquery.validate.min.js"></script>

	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							function validatePhone(txtPhone) {
								var filter = /^[0-9-+]+$/;
								if (filter.test(txtPhone + "")
										&& txtPhone.length >= 10
										&& txtPhone.length < 12) {
									return true;
								} else {
									return false;
								}
							}

							$('#regis')
									.bind(
											{
												'submit' : function() {
													if ($('#password').val() != $(
															'#re_password')
															.val()) {
														$('#error')
																.html(
																		"Mật khẩu nhập lại không chính xác");
														return false;
													}
													if (!validatePhone($(
															'#phone').val())) {
														$('#error_phone')
																.html(
																		'Số điện thoại bạn nhập vào không phù hợp!!!');
														return false;
													}
													return true;
												},
												'keydown' : function() {
													if ($('#password').val() == $(
															'#re_password')
															.val()) {
														$('#error').html("");
													}
													if ($('#phone').val().length > 0) {
														$('#error_phone').html(
																'');
													}

												}
											})
						});
	</script>
</body>
</html>