<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
  <!DOCTYPE html>
<html>

<head>

<title>Customer Register</title>

<link rel="stylesheet" href="style.css">

</head>

<body>

<h2>Customer Registration</h2>

<div class="container">

<form action="RegisterServlet" method="post">

Name
<input type="text" name="name" required><br></br>

Email
<input type="email" name="email" required>

Password
<input type="password" name="password" required>

Phone
<input type="text" name="phone" required>

<input type="submit" value="Register">

</form>

</div>

</body>

</html>