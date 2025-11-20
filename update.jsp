<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Update Student Name</title>
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;700&display=swap');

    * {margin: 0; padding: 0; box-sizing: border-box; font-family: "Poppins", sans-serif;}

    body {
      height: 100vh;
      background: url('https://images.unsplash.com/photo-1600880292203-757bb62b4baf?auto=format&fit=crop&w=1400&q=80')
                  no-repeat center center/cover;
      display: flex; justify-content: center; align-items: center; position: relative;
    }

    .overlay {
      position: absolute; top: 0; left: 0; height: 100%; width: 100%;
      background: rgba(0, 0, 0, 0.45); backdrop-filter: blur(3px);
    }

    .form-container {
      position: relative; z-index: 2;
      background: rgba(255, 255, 255, 0.2);
      backdrop-filter: blur(12px);
      border-radius: 20px;
      padding: 40px 50px;
      width: 500px;
      color: #fff;
      box-shadow: 0 10px 25px rgba(0,0,0,0.3);
      text-align: center;
    }

    h2 {margin-bottom: 25px; font-weight: 700; color: #fff;}
    label {display: block; margin-bottom: 5px; text-align: left;}

    input {
      width: 100%; padding: 10px; border-radius: 10px; border: none;
      background: rgba(255,255,255,0.9); outline: none; font-size: 15px;
    }

    input:focus {
      box-shadow: 0 0 6px rgba(37,117,252,0.8);
    }

    button {
      width: 100%; padding: 14px; margin-top: 15px; border: none; border-radius: 10px;
      font-size: 17px; background: linear-gradient(90deg, #2575fc, #6a11cb);
      color: #fff; cursor: pointer; transition: transform 0.3s ease;
    }

    button:hover {transform: scale(1.05);}
    a {display: block; margin-top: 12px; color: #fff;}
    a:hover {text-decoration: underline;}
  </style>
</head>
<body>
  <div class="overlay"></div>
  <form action="UpdateStudent.jsp" method="post" class="form-container">
    <h2>✏️ Update Student Name</h2>

    <label for="sid">Student ID</label>
    <input type="text" id="sid" name="sid" placeholder="Enter Student ID" required>

    <label for="sname">New Student Name</label>
    <input type="text" id="sname" name="sname" placeholder="Enter New Name" required>

    <button type="submit">Update Name</button>
    <a href="Studentindex.html">⬅ Back to Home</a>
  </form>
</body>
</html>
