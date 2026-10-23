package com.hotel;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.sql.*;

@WebServlet("/DeleteCustomerServlet")

public class DeleteCustomerServlet extends HttpServlet {

protected void doGet(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {

int id = Integer.parseInt(request.getParameter("id"));

try{

DBConnection db = new DBConnection();
Connection con = db.getConnection();

PreparedStatement ps = con.prepareStatement(
"delete from customers where id=?"
);

ps.setInt(1,id);

ps.executeUpdate();

response.sendRedirect("viewCustomers.jsp");

}catch(Exception e){
e.printStackTrace();
}

}
}