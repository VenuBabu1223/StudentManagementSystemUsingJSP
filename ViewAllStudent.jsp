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
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/venu", "root", "123456");
		PreparedStatement preparedStatement = connection.prepareStatement("select * from student");
		ResultSet resultSet = preparedStatement.executeQuery();
		while (resultSet.next()) {
			out.println(resultSet.getInt(1) + " " + resultSet.getString(2) + " " + resultSet.getInt(3) + " "
			+ resultSet.getString(4) + " " + resultSet.getString(5) + " " + resultSet.getString(6) + " "
			+ resultSet.getString(7) + " " + resultSet.getString(8) + "<br>");
		}
		connection.close();
	} catch (Exception e) {
		out.println(e);
	}
	%>

</body>
</html>