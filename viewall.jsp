<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>View All Students</title>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;700&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: "Poppins", sans-serif;
}

body {
	min-height: 100vh;
	background:
		url('https://images.unsplash.com/photo-1522202176988-66273c2fd55f?auto=format&fit=crop&w=1400&q=80')
		no-repeat center center/cover;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	position: relative;
	padding: 20px;
	overflow-x: hidden;
}

.overlay {
	position: absolute;
	top: 0;
	left: 0;
	height: 100%;
	width: 100%;
	background: rgba(0, 0, 0, 0.45);
	backdrop-filter: blur(4px);
	z-index: 0;
}

.container {
	position: relative;
	z-index: 2;
	background: rgba(255, 255, 255, 0.2);
	backdrop-filter: blur(12px);
	border-radius: 20px;
	padding: 30px 40px;
	width: 90%;
	max-width: 1000px;
	box-shadow: 0 10px 25px rgba(0, 0, 0, 0.3);
	color: #fff;
	animation: fadeIn 1.5s ease;
}


keyframes fadeIn {
	from {opacity: 0;
	transform: translateY(30px);
}

to {
	opacity: 1;
	transform: translateY(0);
}

}
h2 {
	text-align: center;
	margin-bottom: 25px;
	font-weight: 700;
	color: #fff;
}

table {
	width: 100%;
	border-collapse: collapse;
	text-align: center;
	background: rgba(255, 255, 255, 0.15);
	border-radius: 15px;
	overflow: hidden;
}

th, td {
	padding: 12px 15px;
	border-bottom: 1px solid rgba(255, 255, 255, 0.2);
}

th {
	background: rgba(0, 0, 0, 0.4);
	color: #fff;
	font-weight: 600;
}

tr:hover {
	background: rgba(255, 255, 255, 0.2);
	transition: background 0.3s;
}

.button-container {
	text-align: center;
	margin-top: 20px;
}

.button-container a {
	display: inline-block;
	background: linear-gradient(90deg, #2575fc, #6a11cb);
	color: white;
	text-decoration: none;
	padding: 12px 25px;
	border-radius: 10px;
	font-size: 16px;
	transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.button-container a:hover {
	transform: scale(1.05);
	box-shadow: 0 6px 15px rgba(37, 117, 252, 0.5);
}

@media ( max-width :768px) {
	.container {
		padding: 20px;
		width: 95%;
	}
	table {
		font-size: 13px;
	}
	th, td {
		padding: 10px;
	}
}
</style>
</head>
<body>
	<form action="ViewAllStudent.jsp">
		<input type="submit" value="display all students">View All
		Students</input>
	</form>
	
</body>
</html>
