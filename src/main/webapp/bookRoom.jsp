<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>

<head>
<title>Book Room</title>
<link rel="stylesheet" href="style.css">
</head>

<body>

<h2>Book Room</h2>

<form action="BookRoomServlet" method="post">

Room ID
<input type="text" name="room_id">

Customer ID
<input type="text" name="customer_id">

Check In
<input type="date" name="checkin">

Check Out
<input type="date" name="checkout">

<input type="submit" value="Book Room">

</form>

</body>

</html>