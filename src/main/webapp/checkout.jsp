<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<title>Check Out</title>
<link rel="stylesheet" href="style.css">
</head>

<body>

<h2>Customer Check Out</h2>

<form action="CheckOutServlet" method="post">

Booking ID
<input type="text" name="booking_id">

Check Out Date
<input type="date" name="checkout">

<input type="submit" value="Check Out">

</form>

</body>

</html>