package controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ConnectToDatabase;

import java.io.IOException;
import java.sql.ResultSet;

@WebServlet("/gentelella-master/production/ThemTK")
public class ThemTK extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");

		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String re_password = request.getParameter("re_password");
		String name = request.getParameter("name");
		String diaChi = request.getParameter("diaChi");
		String email = request.getParameter("email");
		String sdt = request.getParameter("sdt");
		String capBac = request.getParameter("level");
		String active = request.getParameter("active");

		String stt = "";
		try {
			ResultSet rs = new ConnectToDatabase().selectData("select * from Users");
			while (rs.next()) {
				String s = rs.getString(9);
				stt = Integer.parseInt(s) + 1 + "";
			}
			new ConnectToDatabase().excuteSql(
					"insert into Users values('" + username + "','" + password + "','" + name + "','" + diaChi + "','"
							+ email + "','" + sdt + "','" + capBac + "','" + active + "','" + stt + "')");
			response.sendRedirect("quanLyTTUsers.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
