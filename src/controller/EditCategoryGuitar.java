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

@WebServlet("/gentelella-master/production/EditCategoryGuitar")
public class EditCategoryGuitar extends HttpServlet {

	String maDanhMuc = "";
	String tenLoaiGuitar = "";
	int active = 0;
	String danhMucCha = "";

	public EditCategoryGuitar() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String maDanhMuc = request.getParameter("maDanhMuc");
		ResultSet rs;

		try {
			rs = new ConnectToDatabase().selectData("select * from CategoryGuitar where maDanhMuc='" + maDanhMuc + "'");
			while (rs.next()) {
				tenLoaiGuitar = rs.getString(2);
				active = rs.getInt(3);
				danhMucCha = rs.getString(4);

			}
			response.setContentType("text/html");

			ServletContext context = request.getServletContext();
			context.setAttribute("maDanhMuc", maDanhMuc);
			context.setAttribute("tenLoaiGuitar", tenLoaiGuitar);
			context.setAttribute("active", active);
			context.setAttribute("danhMucCha", danhMucCha);

			response.sendRedirect("editCategoryGuitar.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html");

		String tenLoaiGuitar = request.getParameter("tenLoaiGuitar");
		int active = Integer.parseInt(request.getParameter("active"));
		String danhMucCha = request.getParameter("danhMucCha");

		ServletContext context = request.getServletContext();
		String maDanhMuc = (String) context.getAttribute("maDanhMuc");

		try {
			new ConnectToDatabase().excuteSql("update CategoryGuitar set maDanhMuc='" + maDanhMuc + "',tenLoaiGuitar='"
					+ tenLoaiGuitar + "',active='" + active + "',danhMucCha='" + danhMucCha + "' where maDanhMuc='"
					+ maDanhMuc + "'");
			response.sendRedirect("quanLyDanhMuc.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
