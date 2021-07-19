package controller;



import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.ConnectToDatabase;
import model.Users;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/checkout")
public class checkout extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
        String sql="SELECT GETDATE()";
        PrintWriter out = response.getWriter();
        try {
            PreparedStatement ps = (PreparedStatement) ConnectToDatabase.getPreparedStatement(sql) ;
            ResultSet rs= ps.executeQuery();
            request.setAttribute("rs",rs);
            HttpSession session=request.getSession();
            Users u = (Users) session.getAttribute("user");
            if (u != null) {
                request.getRequestDispatcher("checkout.jsp").forward(request,response);
            }
            else{
            	out.println("<script type=\"text/javascript\">");
    			out.println("alert('Hãy Đăng Nhập Để Mua Hàng Tại Đàn Việt');");
    			out.println("location='index.jsp';");
    			out.println("</script>");
    			
            }
        } catch (ClassNotFoundException |SQLException e) {
            e.printStackTrace();
        }

    }
}


