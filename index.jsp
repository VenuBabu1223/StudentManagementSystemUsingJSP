<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Student Management Portal</title>
  <style>
    /* ====== Global Styles ====== */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: "Poppins", sans-serif;
    }

    body {
      height: 100vh;
      background: url('https://images.unsplash.com/photo-1573497019702-8e89d0d44a94?auto=format&fit=crop&w=1600&q=80') 
        no-repeat center center/cover;
      display: flex;
      justify-content: center;
      align-items: center;
      position: relative;
      overflow: hidden;
    }

    /* ====== Overlay for better contrast ====== */
    body::before {
      content: "";
      position: absolute;
      inset: 0;
      background: rgba(0, 0, 0, 0.55);
      backdrop-filter: blur(3px);
      z-index: 0;
    }

    /* ====== Glass Card Container ====== */
    .container {
      position: relative;
      z-index: 1;
      background: rgba(255, 255, 255, 0.15);
      backdrop-filter: blur(15px);
      border-radius: 20px;
      padding: 40px 35px;
      width: 430px;
      text-align: center;
      color: #fff;
      box-shadow: 0 10px 35px rgba(0, 0, 0, 0.3);
      border: 1px solid rgba(255, 255, 255, 0.2);
      animation: fadeIn 1s ease;
    }

    h1 {
      font-size: 1.9em;
      margin-bottom: 25px;
      letter-spacing: 1px;
      color: #fff;
      text-shadow: 0 0 10px rgba(255,255,255,0.3);
    }

    /* ====== Buttons ====== */
    .btn {
      display: block;
      width: 100%;
      padding: 14px;
      border: none;
      border-radius: 10px;
      margin: 10px 0;
      font-size: 1em;
      font-weight: 600;
      cursor: pointer;
      color: #fff;
      background: linear-gradient(135deg, #667eea, #764ba2);
      transition: all 0.3s ease;
      box-shadow: 0 4px 15px rgba(0,0,0,0.2);
    }

    .btn:hover {
      transform: translateY(-3px);
      box-shadow: 0 8px 25px rgba(0,0,0,0.3);
    }

    .insert-btn { background: linear-gradient(135deg, #43a047, #66bb6a); }
    .update-btn { background: linear-gradient(135deg, #ffb300, #ffca28); }
    .delete-btn { background: linear-gradient(135deg, #e53935, #ef5350); }
    .viewall-btn { background: linear-gradient(135deg, #1e88e5, #42a5f5); }
    .viewbyid-btn { background: linear-gradient(135deg, #8e24aa, #ba68c8); }

    /* ====== Footer ====== */
    footer {
      margin-top: 25px;
      color: rgba(255,255,255,0.8);
      font-size: 0.9em;
    }

    a {
      text-decoration: none;
      color: inherit;
    }

    /* ====== Animation ====== */
    @keyframes fadeIn {
      from { opacity: 0; transform: translateY(30px); }
      to { opacity: 1; transform: translateY(0); }
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>🎓 Student Management</h1>

    <a href="insert.jsp">
      <button class="btn insert-btn">➕ Insert Student</button>
    </a>

    <a href="update.jsp">
      <button class="btn update-btn">✏ Update Student</button>
    </a>

    <a href="delete.jsp">
      <button class="btn delete-btn">🗑 Delete Student</button>
    </a>

    <a href="viewall.jsp">
      <button class="btn viewall-btn">📋 View All Students</button>
    </a>

    <a href="viewbyid.jsp">
      <button class="btn viewbyid-btn">🔍 View by ID</button>
    </a>

    <footer>Created by VenuBabu | Java Server Pages Project 🚀</footer>
  </div>
</body>
</html>
