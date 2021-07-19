package controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ConnectToDatabase;

import java.io.IOException;

@WebServlet("/gentelella-master/production/DeleteProduct")
public class DeleteProduct extends HttpServlet {
    public static final long serialVersionUID = 1L;

    public DeleteProduct() {
        super();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String stt = request.getParameter("stt");
        try {
            new ConnectToDatabase().excuteSql("delete from ProductGuitar where stt='" + stt + "'");
            response.sendRedirect("tables_dynamic.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
