package com.hotel;

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class AddRoomServlet extends HttpServlet {

protected void doPost(HttpServletRequest request,
HttpServletResponse response)
throws ServletException, IOException {

String roomno=request.getParameter("roomno");
String type=request.getParameter("type");
String price=request.getParameter("price");

try
{
	
DBConnection db=new DBConnection();
Connection con=db.getConnection();

PreparedStatement ps=con.prepareStatement(
"insert into rooms(room_no,type,price) values(?,?,?)");

ps.setString(1,roomno);
ps.setString(2,type);
ps.setString(3,price);
ps.executeUpdate();

response.getWriter().println("Room Added");

}
catch(Exception e)
{
System.out.println(e);
}

}

}