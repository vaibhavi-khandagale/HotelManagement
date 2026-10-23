package com.hotel;



import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class CheckInServlet extends HttpServlet {

protected void doPost(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {

int booking_id = Integer.parseInt(request.getParameter("booking_id"));
String checkin = request.getParameter("checkin");

try {

DBConnection db = new DBConnection();
Connection con = db.getConnection();

PreparedStatement ps = con.prepareStatement(
"update booking set checkin=? where id=?"
);

ps.setString(1, checkin);
ps.setInt(2, booking_id);

ps.executeUpdate();

response.getWriter().println("Customer Check-In Successful");

} catch(Exception e) {
e.printStackTrace();
}

}
}