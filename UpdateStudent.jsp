<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	int sid = Integer.parseInt(request.getParameter("sid"));
	String sname = request.getParameter("sname");
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/venu", "root", "123456");
		PreparedStatement preparedStatement = connection.prepareStatement("update student set sname=? where sid=?");
		preparedStatement.setString(1, sname);
		preparedStatement.setInt(2, sid);
		int row = preparedStatement.executeUpdate();
		out.println(row + " updated...");
		connection.close();
	} catch (Exception e) {
		out.println(e);
	}
	%>

</body>
</html>