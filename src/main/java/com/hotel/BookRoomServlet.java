package com.hotel;

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class BookRoomServlet extends HttpServlet {

protected void doPost(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {

String name = request.getParameter("name");
String roomno = request.getParameter("roomno");
String days = request.getParameter("days");

try
{
	DBConnection db=new DBConnection();
Connection con = db.getConnection();

PreparedStatement ps = con.prepareStatement(
"insert into booking(name,room_no,days) values(?,?,?)");

ps.setString(1, name);
ps.setString(2, roomno);
ps.setString(3, days);

ps.executeUpdate();

response.getWriter().println("Room Booked Successfully");

}

catch(Exception e)
{
System.out.println(e);
}

}

}