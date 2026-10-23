<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>
<%@ page import="com.hotel.DBConnection" %>

<%

int id = Integer.parseInt(request.getParameter("id"));

DBConnection db=new DBConnection();
Connection con = db.getConnection();

PreparedStatement ps = con.prepareStatement(
"select * from rooms where id=?");

ps.setInt(1,id);

ResultSet rs = ps.executeQuery();

rs.next();

%>
<!DOCTYPE html>
<html>
<body>

<h2>Update Room</h2>

<form action="Update" method="post">

<input type="hidden" name="id" value="<%=rs.getInt(1)%>">

Room No
<input type="text" name="roomno" value="<%=rs.getString(2)%>">

Room Type
<input type="text" name="type" value="<%=rs.getString(3)%>">

Price
<input type="text" name="price" value="<%=rs.getInt(4)%>">

<input type="submit" value="Update Room">

</form>

</body>
</html>