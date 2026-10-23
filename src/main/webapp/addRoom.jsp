<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>

<h2>Add Room</h2>

<form action="AddRoomServlet" method="post">

Room Number
<input type="text" name="roomno">

Room Type
<input type="text" name="type">

Price
<input type="text" name="price">

<input type="submit" value="Add Room">

</form>

</body>
</html>