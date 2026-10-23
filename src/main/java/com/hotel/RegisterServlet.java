package com.hotel;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class RegisterServlet extends HttpServlet {

protected void doPost(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {

String name = request.getParameter("name");
String email = request.getParameter("email");
String password = request.getParameter("password");
String phone = request.getParameter("phone");

try {

DBConnection db = new DBConnection();
Connection con = db.getConnection();

PreparedStatement ps = con.prepareStatement(
"insert into customers(name,email,password,phone) values(?,?,?,?)"
);

ps.setString(1,name);
ps.setString(2,email);
ps.setString(3,password);
ps.setString(4,phone);

ps.executeUpdate();

response.setContentType("text/html");
PrintWriter out = response.getWriter();

out.println("<h2>Registration Successful!</h2>");

}catch(Exception e){
e.printStackTrace();
}

}
}