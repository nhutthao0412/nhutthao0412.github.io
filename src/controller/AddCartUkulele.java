package controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.SanPham;

import java.io.IOException;

@WebServlet("/AddCartUkulele")
public class AddCartUkulele extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	String id = req.getParameter("id");
        try {
            HttpSession session = req.getSession();
            
            SanPham p = SanPham.findUkulele(Integer.parseInt(id));
            Cart c = (Cart) session.getAttribute("Cart");
            if (c == null) c = new Cart();
            if (p != null) c.put(p);
            session.setAttribute("Cart", c);
            resp.sendRedirect("womens.jsp");

        } catch (NumberFormatException e) {

        }
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}

