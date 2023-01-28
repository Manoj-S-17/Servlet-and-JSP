<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@page import="java.sql.*" %>
</head>
<body>
	<%
	String insert = "INSERT INTO login" + "(name,username,pass) VALUES" + "(?, ?, ?);";
	Connection conn = null;
	String name = request.getParameter("name");
	String uname = request.getParameter("uname");
	String cpass = request.getParameter("cpass");
	String pass = request.getParameter("pass");
	int flag = 0;
	if(!cpass.equals(pass)){
		out.println("Error : passwords do not match");
		flag = 1;	
	}
	if(flag == 0)
	{	try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/sys","Manoj","manojrazer17");
			PreparedStatement prep = conn.prepareStatement(insert);
			prep.setString(1, name);
			prep.setString(2, uname);
			prep.setString(3, pass);
			prep.executeUpdate();
			request.getRequestDispatcher("login.jsp");
		}
		catch(SQLException ex) {
			
		}
	}
	%>
</body>
</html>
