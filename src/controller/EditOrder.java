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

@WebServlet("/gentelella-master/production/EditOrder")
public class EditOrder extends HttpServlet {

	int active = 0;

	public EditOrder() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String idOrder = request.getParameter("idOrder");
		ResultSet rs;

		try {
			rs = new ConnectToDatabase().selectData("select * from OrderDetail where idOrder='" + idOrder + "'");
			while (rs.next()) {
				active = rs.getInt(11);

			}
			response.setContentType("text/html");

			ServletContext context = request.getServletContext();
			context.setAttribute("idOrder", idOrder);
			context.setAttribute("active", active);

			response.sendRedirect("editOrder.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html");

		String active = request.getParameter("active");

		ServletContext context = request.getServletContext();
		String idOrder = (String) context.getAttribute("idOrder");

		try {
			new ConnectToDatabase().excuteSql("update OrderDetail set active='" + active + "' where idOrder='" + idOrder + "'");
			response.sendRedirect("quanLyDonHang.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
