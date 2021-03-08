<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
   import = "java.io.*,java.util.*, javax.servlet.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Practical 6 | PreLab</title>
</head>
<body>
	<h3>Current Date and time</h3>
	
	<%
		Date date = new Date();
	%>
		<h3>
			<%out.println(date.toString()); %>
		</h3>
	
</body>
</html>