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
	int age = Integer.parseInt(request.getParameter("sage"));
	String fname = request.getParameter("sfathername");
	String mname = request.getParameter("smothername");
	String email = request.getParameter("semail");
	String course = request.getParameter("coursedetails");
	String address = request.getParameter("address");
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/venu", "root", "123456");
		PreparedStatement preparedStatement = connection.prepareStatement("insert into student values(?,?,?,?,?,?,?,?)");
		preparedStatement.setInt(1, sid);
		preparedStatement.setString(2, sname);
		preparedStatement.setInt(3, age);
		preparedStatement.setString(4, fname);
		preparedStatement.setString(5, mname);
		preparedStatement.setString(6, email);
		preparedStatement.setString(7, course);
		preparedStatement.setString(8, address);
		int row = preparedStatement.executeUpdate();
		out.println(row + " inserted...");
		connection.close();
	} catch (Exception e) {
		out.println(e);
	}
	%>

</body>
</html>