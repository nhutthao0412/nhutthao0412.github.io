package controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.SanPham;

import java.io.IOException;

@WebServlet("/Remove")
public class Remove extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	String id = req.getParameter("id");
        try {
            HttpSession session = req.getSession();
            
            SanPham p = SanPham.find(Integer.parseInt(id));
            Cart c = (Cart) session.getAttribute("Cart");
            if (c == null) c = new Cart();
            if (p != null) c.remove(Integer.parseInt(id));
            session.setAttribute("Cart", c);
            if (c.remove(Integer.parseInt(id))==true) {				
            	resp.sendRedirect("cart.jsp");
			}

        } catch (NumberFormatException e) {

        }
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}

