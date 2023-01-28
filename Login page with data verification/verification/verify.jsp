<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<%@page import="java.sql.*" %>
<body>
	<%
	Connection conn = null;
	String name = request.getParameter("lname");
	String pass = request.getParameter("lpass");
	String check = "select * from login where username = ? and pass = ?;";
	try{
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sys","Manoj","manojrazer17");
		PreparedStatement ps = conn.prepareStatement(check);
		ps.setString(1,name);
		ps.setString(2,pass);
		ResultSet rs = ps.executeQuery();
		if(rs.next()){
			String str = rs.getString("name");
			out.println("Successfully Logged In!");
			out.println("Welcome "+str);
			RequestDispatcher disp = request.getRequestDispatcher("welcome.jsp");
		}
		else
			out.println("Wrong Username or Password, try again!");
	}
	catch(SQLException e){
		
	}
	finally{
		conn.close();
	}
	%>
</body>
</html>
