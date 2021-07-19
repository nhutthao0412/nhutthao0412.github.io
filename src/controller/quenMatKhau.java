package controller;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.KhachHangDAO;
import model.ConnectToDatabase;
import model.Users;

@WebServlet("/quenMatKhau")
public class quenMatKhau extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public quenMatKhau() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html");

		String username = request.getParameter("username");
		String email = request.getParameter("email");

		try {
			Users user = new KhachHangDAO().layThongTinTaiKhoan(username);
			if (user != null) {
				new KhachHangDAO().passwordRecovery(username, email);
				response.sendRedirect("index.jsp");

			} else {
				System.out.println("Error Username");
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
	}

}
