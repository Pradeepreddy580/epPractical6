<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    
    import = 'java.sql.*'%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
<a href='Inlab.html'>Register</a>
<a href='postlab.html'>Login</a>
<hr>
<%
	try{
		
		String email = request.getParameter("email");
		String psword = request.getParameter("psword");
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ep","ep123");
		
		String sql = "SELECT * FROM practical6 WHERE email = ? and password = ?";
		
		PreparedStatement pst = con.prepareStatement(sql);
		
		pst.setString(1, email);
		pst.setString(2, psword);
		
		ResultSet rs = pst.executeQuery();
		
		if(rs.next()){
			out.println("<h3>Login Successfull</h3>");
		}else{
			out.println("<h3>Login USuccessfull</h3>");
		}
	}catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
%>
</body>
</html>