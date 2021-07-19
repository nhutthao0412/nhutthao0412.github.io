package controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.ConnectToDatabase;
import model.SanPham;
import model.Users;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Iterator;

@WebServlet("/receipt")
public class Receipt extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String sql = "SELECT GETDATE()";
		String add = "INSERT INTO OrderDetail(idOrder, tenKH, danhSachTenSanPham,tongSoLuong,tongTien,ngayMua,diaChi,soDienThoai,email,trangThaiDonHang,active) VALUES (?,?,?,?,?,?,?,?,?,?,?)";
		String sss = "select * from OrderDetail";
		try {
			PreparedStatement ps = (PreparedStatement) ConnectToDatabase.getPreparedStatement(sql);
			ResultSet rs = ps.executeQuery();
			rs.next();

			PreparedStatement ps1 = (PreparedStatement) ConnectToDatabase.getPreparedStatement(sss);
			ResultSet rs1 = ps1.executeQuery();
			rs1.next();

			String s1 = rs1.getString(1);
			String stt = Integer.parseInt(s1) + 1 + "";

			HttpSession session = request.getSession();
			Cart c = (Cart) session.getAttribute("Cart");
			Users u = (Users) session.getAttribute("user");
			String ds = "";
			for (SanPham p : c.list()) {
				ds += p.getTenSanPham() + ";";
			}
			PreparedStatement pst = (PreparedStatement) ConnectToDatabase.getPreparedStatement(add);
			pst.setString(1, stt);
			pst.setString(2, u.getUsername());
			pst.setString(3, ds);
			pst.setInt(4, c.list().size());
			pst.setDouble(5, c.total());
			pst.setString(6, rs.getString(1));
			pst.setString(7, address);
			pst.setString(8, phone);
			pst.setString(9, email);
			pst.setString(10, "Da tiep nhan");
			pst.setString(11, "1");
			int re = pst.executeUpdate();
			if (re == 1) {
				session.removeAttribute("Cart");
				response.sendRedirect("thongbao.jsp");
			} else {
				response.sendRedirect("error.jsp");
			}

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}

	}
}
