<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<%@ page import="com.hotel.DBConnection" %>

<%

int id = Integer.parseInt(request.getParameter("id"));

DBConnection db=new DBConnection();
Connection con = db.getConnection();

PreparedStatement ps = con.prepareStatement("delete from rooms where id=?");

ps.setInt(1,id);

ps.executeUpdate();

response.sendRedirect("viewRooms.jsp");

%>