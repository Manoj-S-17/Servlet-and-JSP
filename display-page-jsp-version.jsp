<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- 
	<%@page import = "java.util.Date, java.util.Scanner"
	 %> 
	@page is used if u want to do something for the entire page, like importing libraries
	@page extends = classname -> for extending another class
	@include is used to include another jsp file
	@taglib 
	 
-->
	<%!
	//DECLARATIONS
	//Everything u want to create outside service() method and inside the class. For eg. another method() or global variables
	%>
	<%
	//SCRIPTLET
	//Everything that is present inside a service method
	if(session.getAttribute("conf")!= null)
		out.println("Mail Mismatch!");
	else{
		out.println("Welcome "+session.getAttribute("name")+".");//FOR using the name frome COOKIES USE "name" in print
		out.println();
		out.println("Your Email is Confirmed!");
		//OUT.PRINTLN() ALSO HAS A TAG WHICH CAN BE USED OUTSIDE THE SCRIPTLET
		//SEE BELOW TAG<%= "%.>" IGNORE THE DOT HERE
	}
	%>
	<%="ACTS AS out.println()" %>
</body>
</html>
