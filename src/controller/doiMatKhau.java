package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.KhachHangDAO;
import model.ConnectToDatabase;
import model.Users;

@WebServlet("/doiMatKhau")
public class doiMatKhau extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public doiMatKhau() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html");

		PrintWriter out = response.getWriter();

		String username = request.getParameter("username");
		String oldPass = request.getParameter("oldPass");
		String newPass = request.getParameter("newPass");

		if (new KhachHangDAO().kiemTraDangNhap(username, oldPass)) {
			new KhachHangDAO().changePass(username, newPass);
			//response.sendRedirect("index.jsp");
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Đổi mật khẩu thành công');");
			out.println("location='index.jsp';");
			out.println("</script>");
		} else {
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Tài khoản hoặc mật khẩu không đúng vui lòng nhập lại');");
			out.println("location='index.jsp';");
			out.println("</script>");
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
