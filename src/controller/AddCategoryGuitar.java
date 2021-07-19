package controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ConnectToDatabase;

import java.io.IOException;
import java.sql.ResultSet;

@WebServlet("/gentelella-master/production/AddCategoryGuitar")
public class AddCategoryGuitar extends HttpServlet {
	public static final long serialVersionUID = 1L;

	public AddCategoryGuitar() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html");

		String tenLoaiGuitar = request.getParameter("tenLoaiGuitar");
		int active = Integer.parseInt(request.getParameter("active"));
		String danhMucCha = request.getParameter("danhMucCha");

		String maDanhMuc = "";
		try {
			ResultSet rs = new ConnectToDatabase().selectData("select * from CategoryGuitar");
			while (rs.next()) {
				String s = rs.getString(1);
				maDanhMuc = Integer.parseInt(s) + 10 + "";
			}
			new ConnectToDatabase().excuteSql("insert into CategoryGuitar values('" + maDanhMuc + "','" + tenLoaiGuitar + "','" + active + "','" + danhMucCha + "')");
			response.sendRedirect("quanLyDanhMuc.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
