<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<%@ page import="com.hotel.DBConnection" %>

<html>

<head>
<title>Customer List</title>

<link rel="stylesheet" href="style.css">

</head>

<body>

<h2>Customer List</h2>

<table border="1">

<tr>
<th>ID</th>
<th>Name</th>
<th>Email</th>
<th>Phone</th>
<th>Delete</th>
</tr>

<%

try{

DBConnection db = new DBConnection();
Connection con = db.getConnection();

Statement st = con.createStatement();

ResultSet rs = st.executeQuery("select * from customers");

while(rs.next()){
%>

<tr>

<td><%=rs.getInt("id")%></td>

<td><%=rs.getString("name")%></td>

<td><%=rs.getString("email")%></td>

<td><%=rs.getString("phone")%></td>

<td>
<a href="DeleteCustomerServlet?id=<%=rs.getInt("id")%>">Delete</a>
</td>

</tr>

<%
}

}catch(Exception e){
out.println(e);
}

%>

</table>

</body>

</html>