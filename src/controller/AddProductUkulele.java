package controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ConnectToDatabase;

import java.io.IOException;
import java.sql.ResultSet;

@WebServlet("/gentelella-master/production/AddProductUkulele")
public class AddProductUkulele extends HttpServlet {
	public static final long serialVersionUID = 1L;

	public AddProductUkulele() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html");

		String maSanPham = request.getParameter("maSanPham");
		String tenSanPham = request.getParameter("tenSanPham");
		String maDanhMuc = request.getParameter("maDanhMuc");
		String thuongHieu = request.getParameter("thuongHieu");
		String khoangGia = request.getParameter("khoangGia");
		int gia = Integer.parseInt(request.getParameter("gia"));
		int giaKhuyenMai = Integer.parseInt(request.getParameter("giaKhuyenMai"));
		String img1 = "images/" + request.getParameter("img1");
		String img2 = "images/" + request.getParameter("img2");
		String img3 = "images/" + request.getParameter("img3");
		int soLuong = Integer.parseInt(request.getParameter("soLuong"));
		int soLuongNhap = Integer.parseInt(request.getParameter("soLuongNhap"));
		String moTa = request.getParameter("moTa");
		String information = request.getParameter("information");
		int active = Integer.parseInt(request.getParameter("active"));

		String stt = "";
		try {
			ResultSet rs = new ConnectToDatabase().selectData("select * from ProductUkulele");
			while (rs.next()) {
				String s = rs.getString(1);
				stt = Integer.parseInt(s) + 1 + "";
			}
			new ConnectToDatabase().excuteSql("insert into ProductUkulele values('" + stt + "','" + maSanPham + "','"
					+ tenSanPham + "','" + maDanhMuc + "','" + thuongHieu + "','" + khoangGia + "','" + gia + "','"
					+ giaKhuyenMai + "','" + img1 + "','" + img2 + "','" + img3 + "','" + soLuong + "','" + soLuongNhap
					+ "',0,'" + moTa + "','" + information + "','" + active + "')");
			response.sendRedirect("tables_dynamic.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
