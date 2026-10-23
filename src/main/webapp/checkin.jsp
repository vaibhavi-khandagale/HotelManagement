<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Check In</title>
<link rel="stylesheet" href="style.css">
</head>

<body>

<h2>Customer Check In</h2>

<form action="CheckInServlet" method="post">

Booking ID
<input type="text" name="booking_id">

Check In Date
<input type="date" name="checkin">

<input type="submit" value="Check In">

</form>

</body>

</html>