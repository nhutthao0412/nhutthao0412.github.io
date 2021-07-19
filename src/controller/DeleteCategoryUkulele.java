package controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ConnectToDatabase;

import java.io.IOException;

@WebServlet("/gentelella-master/production/DeleteCategoryUkulele")
public class DeleteCategoryUkulele extends HttpServlet {
    public static final long serialVersionUID = 1L;

    public DeleteCategoryUkulele() {
        super();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String maDanhMuc = request.getParameter("maDanhMuc");
        try {
            new ConnectToDatabase().excuteSql("delete from CategoryUkulele where maDanhMuc='" + maDanhMuc + "'");
            response.sendRedirect("quanLyDanhMuc.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
