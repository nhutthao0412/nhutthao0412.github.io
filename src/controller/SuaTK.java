package controller;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ConnectToDatabase;

@WebServlet("/gentelella-master/production/SuaTK")
public class SuaTK extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SuaTK() {
		super();
	}

	String username = "";
	String name = "";
	String diaChi = "";
	String email = "";
	String sdt = "";
	String level = "";
	String active = "";

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html");

		String stt = request.getParameter("stt");
		ResultSet rs;

		try {
			rs = new ConnectToDatabase().selectData("select * from Users where stt='" + stt + "'");
			while (rs.next()) {
				username = rs.getString(1);
				name = rs.getString(3);
				diaChi = rs.getString(4);
				email = rs.getString(5);
				sdt = rs.getString(6);
				level = rs.getString(7);
				active = rs.getString(8);
			}
			response.setContentType("text/html");

			ServletContext context = request.getServletContext();
			context.setAttribute("stt", stt);
			context.setAttribute("username", username);
			context.setAttribute("name", name);
			context.setAttribute("diaChi", diaChi);
			context.setAttribute("email", email);
			context.setAttribute("sdt", sdt);
			context.setAttribute("level", level);
			context.setAttribute("active", active);

			response.sendRedirect("editUser.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");

		String username = request.getParameter("username");
		String name = request.getParameter("name");
		String diaChi = request.getParameter("diaChi");
		String email = request.getParameter("email");
		String sdt = request.getParameter("sdt");
		String level = request.getParameter("level");
		String active = request.getParameter("active");

		response.setContentType("text/html");
		ServletContext context = request.getServletContext();
		String stt = (String) context.getAttribute("stt");

		try {
			new ConnectToDatabase().excuteSql("update Users set username='" + username + "',tenKH='" + name + "'"
					+ ",diaChi='" + diaChi + "',email='" + email + "',soDienThoai='" + sdt + "',capBac='" + level
					+ "',active='" + active + "' where stt='" + stt + "'");
			response.sendRedirect("quanLyTTUsers.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
