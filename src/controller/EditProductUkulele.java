package controller;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ConnectToDatabase;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

@WebServlet("/gentelella-master/production/EditProductUkulele")
public class EditProductUkulele extends HttpServlet {

	String maSanPham = "";
	String tenSanPham = "";
	String maDanhMuc = "";
	String thuongHieu = "";
	String khoangGia = "";
	int gia = 0;
	int giaKhuyenMai = 0;
	String img1 = "";
	String img2 = "";
	String img3 = "";
	int soLuong = 0;
	int soLuongNhap = 0;
	String moTa = "";
	String information = "";
	int active = 0;

	public EditProductUkulele() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String stt = request.getParameter("stt");
		ResultSet rs;

		try {
			rs = new ConnectToDatabase().selectData("select * from ProductUkulele where stt='" + stt + "'");
			while (rs.next()) {
				maSanPham = rs.getString(2);
				tenSanPham = rs.getString(3);
				maDanhMuc = rs.getString(4);
				thuongHieu = rs.getString(5);
				khoangGia = rs.getString(6);
				gia = rs.getInt(7);
				giaKhuyenMai = rs.getInt(8);
				img1 = rs.getString(9);
				img2 = rs.getString(10);
				img3 = rs.getString(11);
				soLuong = rs.getInt(12);
				soLuongNhap = rs.getInt(13);
				moTa = rs.getString(15);
				information = rs.getString(16);
				active = rs.getInt(17);

			}
			response.setContentType("text/html");

			ServletContext context = request.getServletContext();
			context.setAttribute("stt", stt);
			context.setAttribute("maSanPham", maSanPham);
			context.setAttribute("tenSanPham", tenSanPham);
			context.setAttribute("maDanhMuc", maDanhMuc);
			context.setAttribute("thuongHieu", thuongHieu);
			context.setAttribute("khoangGia", khoangGia);
			context.setAttribute("gia", gia);
			context.setAttribute("giaKhuyenMai", giaKhuyenMai);
			context.setAttribute("img1", img1);
			context.setAttribute("img2", img2);
			context.setAttribute("img3", img3);
			context.setAttribute("soLuong", soLuong);
			context.setAttribute("soLuongNhap", soLuongNhap);
			context.setAttribute("moTa", moTa);
			context.setAttribute("information", information);
			context.setAttribute("active", active);

			response.sendRedirect("editProductUkulele.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
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

		ServletContext context = request.getServletContext();
		String stt = (String) context.getAttribute("stt");

		try {
			new ConnectToDatabase().excuteSql("update ProductUkulele set stt='" + stt + "',maSanPham='" + maSanPham
					+ "',tenSanPham='" + tenSanPham + "',maDanhMuc='" + maDanhMuc + "',thuongHieu='" + thuongHieu
					+ "',khoangGia='" + khoangGia + "',gia='" + gia + "',giaKhuyenMai='" + giaKhuyenMai
					+ "',img1='" + img1 + "',img2='" + img2 + "',img3='" + img3 + "',soLuong='"
					+ soLuong + "',soLuongNhap='" + soLuongNhap + "',moTa='" + moTa + "',information='" + information
					+ "',active='" + active + "' where stt='" + stt + "'");
			response.sendRedirect("tables_dynamic.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
