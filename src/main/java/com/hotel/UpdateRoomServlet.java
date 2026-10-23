package com.hotel;

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class UpdateRoomServlet extends HttpServlet {

protected void doPost(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {

int id = Integer.parseInt(request.getParameter("id"));
String roomno = request.getParameter("roomno");
String type = request.getParameter("type");
String price = request.getParameter("price");

try
{
	DBConnection db=new DBConnection();
Connection con = db.getConnection();

PreparedStatement ps = con.prepareStatement(
"update rooms set room_no=?, type=?, price=? where id=?");

ps.setString(1, roomno);
ps.setString(2, type);
ps.setString(3, price);
ps.setInt(4, id);

ps.executeUpdate();

response.sendRedirect("viewRooms.jsp");

}

catch(Exception e)
{
System.out.println(e);
}

}

}