package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import dao.KhachHangDAO;
import model.ConnectToDatabase;
import model.Users;

@WebServlet("/XuLyDangKy")
public class XuLyDangKy extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public XuLyDangKy() {
		super();
	}

	private KhachHangDAO khDAO = new KhachHangDAO();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");

		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String tenkh = request.getParameter("name");

		String email = request.getParameter("email");
		String sodienthoai = request.getParameter("sdt");
		String diachi = request.getParameter("diaChi");

		PrintWriter out = response.getWriter();

		try {
			String count = "";
			ResultSet rs;
			rs = new ConnectToDatabase().selectData("select*from Users");
			while (rs.next()) {
				String stt = rs.getString(9);
				count = Integer.parseInt(stt) + 1 + "";
			}

			Users user = new Users(username, password, tenkh, diachi, email, sodienthoai, "1", "1", count);
			if (new KhachHangDAO().kiemTraTaiKhoanTonTai(username)) {
				new KhachHangDAO().themTaiKhoan(user);
				new KhachHangDAO().guiMailXacNhan(email);
				response.sendRedirect("index.jsp");
			} else {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Tên tài khoản đã tồn tại');");
				out.println("location='index.jsp';");
				out.println("</script>");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
