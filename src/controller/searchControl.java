package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.KhachHangDAO;
import dao.ProductDAOImpl;

@WebServlet("/searchControl")
public class searchControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public searchControl() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String searchName = request.getParameter("search");

		new ProductDAOImpl().searchListProductByName(searchName);
		request.setAttribute("search", searchName);
		request.getRequestDispatcher("search.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
