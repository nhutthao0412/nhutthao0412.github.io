package controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ConnectToDatabase;

import java.io.IOException;

@WebServlet("/gentelella-master/production/DeleteOrder")
public class DeleteOrder extends HttpServlet {
    public static final long serialVersionUID = 1L;

    public DeleteOrder() {
        super();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idOrder = request.getParameter("idOrder");
        try {
            new ConnectToDatabase().excuteSql("delete from OrderDetail where idOrder='" + idOrder + "'");
            response.sendRedirect("quanLyDonHang.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
