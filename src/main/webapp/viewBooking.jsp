<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<%@ page import="com.hotel.DBConnection" %>

<html>
<body>

<h2>Booking List</h2>

<table border="1">

<tr>
<th>ID</th>
<th>Name</th>
<th>Room No</th>
<th>Days</th>
<th>Check In</th>
<th>Check Out</th>
</tr>

<%
DBConnection db=new DBConnection();
Connection con = db.getConnection();

Statement st = con.createStatement();

ResultSet rs = st.executeQuery("select * from booking where name is not null");

while(rs.next())
{

%>

<tr>

<td><%=rs.getInt(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getInt(4)%></td>
<td><%= rs.getString("checkin")==null ? "" : rs.getString("checkin") %></td>
<td><%= rs.getString("checkout")==null ? "" : rs.getString("checkout") %></td>
</tr>

<%
}
%>

</table>

</body>
</html>