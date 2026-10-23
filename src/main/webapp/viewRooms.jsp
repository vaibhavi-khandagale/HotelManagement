<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<%@ page import="com.hotel.DBConnection" %>

<html>
<body>

<h2>Room List</h2>

<table border="1">

<tr>
<th>ID</th>
<th>Room No</th>
<th>Type</th>
<th>Price</th>
<th>Action</th>
</tr>

<%
DBConnection db=new DBConnection();
Connection con = db.getConnection();

Statement st = con.createStatement();

ResultSet rs = st.executeQuery("select * from rooms");

while(rs.next())
{
%>

<tr>

<td><%=rs.getInt(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getInt(4)%></td>

<td>

<a href="updateRoom.jsp?id=<%=rs.getInt(1)%>">Update</a>

<a href="deleteRoom.jsp?id=<%=rs.getInt(1)%>">Delete</a>
</td>

</tr>

<%
}
%>

</table>

</body>
</html>