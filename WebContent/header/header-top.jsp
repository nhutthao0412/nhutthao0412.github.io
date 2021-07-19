<%@page import="model.Users"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<!-- header -->
	<div class="header" id="home">
		<div class="container">
			<ul>
				<% HttpSession user = request.getSession(true);
				if (user.getAttribute("user") != null) {
				%>
				<li><a>Xin chào, 
				<% Users u = (Users) session.getAttribute("user");
				if (u != null && Integer.parseInt(u.getCapBac()) < 2) {
					out.print(u.getTenKH());
				} else if (u != null && Integer.parseInt(u.getCapBac()) < 3) {
					out.print(u.getTenKH());
				%>
				<a href="gentelella-master/production/tables_dynamic.jsp">[Admin]</a> <%}%>
				<a href="DangXuat" style="margin-left: 30px">Đăng xuất</a>
				</a></li>

				<%} else {%>
				<li><a href="#" data-toggle="modal" data-target="#myModal">
				<i class="fa fa-unlock-alt" aria-hidden="true"></i> Đăng nhập </a></li>
				<%}%>
				<li><a href="#" data-toggle="modal" data-target="#myModal2"><i
						class="fa fa-pencil-square-o" aria-hidden="true"></i> Đăng ký </a></li>
				<li><i class="fa fa-phone" aria-hidden="true"></i> Hotline :
					0359626008</li>
				<li><i class="fa fa-envelope-o" aria-hidden="true"></i> <a
					href="mailto:17130219@st.hcmuaf.edu.vn">17130219@st.hcmuaf.edu.vn</a></li>
			</ul>
		</div>
	</div>
	<!-- //header -->
</body>
</html>