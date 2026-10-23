package com.hotel;

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class DeleteRoomServlet extends HttpServlet{

protected void doGet(HttpServletRequest request,
HttpServletResponse response)
throws ServletException,IOException{

int id=Integer.parseInt(request.getParameter("id"));

try{
	DBConnection db=new DBConnection();
Connection con=db.getConnection();

PreparedStatement ps=con.prepareStatement(
"delete from rooms where id=?");

ps.setInt(1,id);

ps.executeUpdate();

response.sendRedirect("viewRooms.jsp");

}
catch(Exception e){}

}

}