package com.hotel;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class CheckOutServlet extends HttpServlet {

protected void doPost(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {

int booking_id = Integer.parseInt(request.getParameter("booking_id"));
String checkout = request.getParameter("checkout");

try{

DBConnection db = new DBConnection();
Connection con = db.getConnection();

PreparedStatement ps = con.prepareStatement(
"update booking set checkout=? where id=?"
);

ps.setString(1, checkout);
ps.setInt(2, booking_id);

ps.executeUpdate();

response.getWriter().println("Customer Check-Out Successful");

}catch(Exception e){
e.printStackTrace();
}

}
}