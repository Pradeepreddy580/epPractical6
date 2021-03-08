<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
     import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
</head>
<body>
<a href='Inlab.html'>Register</a>
<a href='postlab.html'>Login</a>
<hr>
<%
		try {
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String phnum = request.getParameter("phnum");
			String password = request.getParameter("psword");
			
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			Connection con =  DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ep","ep123");
			
			String sql = "insert into practical6 values (?,?,?,?)";
			PreparedStatement pst = con.prepareStatement(sql);
			
			pst.setString(1, name);
			pst.setString(2, email);
			pst.setString(3, phnum);
			pst.setString(4, password);
			
			int count = pst.executeUpdate();
			System.out.println("Registration successfull");
			if(count > 0) {
				out.println("Registration successfull");
				
			}else {
				out.println("Registraion unsuccessfull");
			}
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
%>
</body>
</html>