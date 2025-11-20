<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Student Registration Form</title>
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;700&display=swap');

    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: "Poppins", sans-serif;
    }

    body {
      height: 100vh;
      background: url('https://images.unsplash.com/photo-1600880292203-757bb62b4baf?auto=format&fit=crop&w=1400&q=80')
                  no-repeat center center/cover;
      display: flex;
      justify-content: center;
      align-items: center;
      position: relative;
      overflow: hidden;
    }

    .overlay {
      position: absolute;
      top: 0;
      left: 0;
      height: 100%;
      width: 100%;
      background: rgba(0, 0, 0, 0.45);
      backdrop-filter: blur(3px);
    }

    .form-wrapper {
      position: relative;
      z-index: 2;
      display: flex;
      justify-content: center;
      align-items: center;
      width: 100%;
    }

    .form-container {
      background: rgba(255, 255, 255, 0.2);
      backdrop-filter: blur(12px);
      border-radius: 20px;
      padding: 40px 50px;
      width: 800px;
      box-shadow: 0 10px 25px rgba(0,0,0,0.3);
      color: #fff;
      animation: fadeIn 1.5s ease;
    }

    @keyframes fadeIn {
      from { opacity: 0; transform: translateY(30px); }
      to { opacity: 1; transform: translateY(0); }
    }

    h2 {
      text-align: center;
      margin-bottom: 25px;
      font-weight: 700;
      color: #fff;
      letter-spacing: 1px;
    }

    .form-grid {
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 18px 25px;
    }

    label {
      font-weight: 500;
      color: #f1f1f1;
      display: block;
      margin-bottom: 6px;
    }

    input, textarea, select {
      width: 100%;
      padding: 10px 12px;
      border-radius: 10px;
      border: none;
      background: rgba(255,255,255,0.9);
      font-size: 15px;
      outline: none;
      transition: 0.2s;
    }

    input:focus, textarea:focus, select:focus {
      box-shadow: 0 0 6px rgba(37,117,252,0.8);
    }

    textarea {
      resize: none;
      grid-column: span 2;
    }

    button {
      grid-column: span 2;
      width: 100%;
      background: linear-gradient(90deg, #2575fc, #6a11cb);
      color: white;
      border: none;
      padding: 14px;
      border-radius: 10px;
      font-size: 17px;
      margin-top: 10px;
      cursor: pointer;
      transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    button:hover {
      transform: scale(1.05);
      box-shadow: 0 6px 15px rgba(37,117,252,0.5);
    }

    .note {
      text-align: center;
      margin-top: 12px;
      font-size: 13px;
      color: #ddd;
      grid-column: span 2;
    }

    a {
      display: block;
      text-align: center;
      margin-top: 10px;
      text-decoration: none;
      color: #fff;
      font-size: 0.9em;
      grid-column: span 2;
    }

    a:hover {
      text-decoration: underline;
      color: #a6c8ff;
    }

    @media (max-width: 768px) {
      .form-container {
        width: 90%;
        padding: 30px;
      }
      .form-grid {
        grid-template-columns: 1fr;
      }
      textarea, button, .note, a {
        grid-column: span 1;
      }
    }
  </style>
</head>
<body>
  <div class="overlay"></div>
  <div class="form-wrapper">
    <form action="InsertStudent.jsp" class="form-container">
      <h2>🎓 Student Registration</h2>

      <div class="form-grid">
        <div>
          <label for="sid">Student ID</label>
          <input type="text" id="sid" name="sid" placeholder="Enter your ID" required>
        </div>

        <div>
          <label for="sname">Student Name</label>
          <input type="text" id="sname" name="sname" placeholder="Enter your name" required>
        </div>

        <div>
          <label for="sage">Student Age</label>
          <input type="number" id="sage" name="sage" placeholder="Enter your age" required>
        </div>

        <div>
          <label for="sfathername">Father's Name</label>
          <input type="text" id="sfathername" name="sfathername" placeholder="Enter father's name" required>
        </div>

        <div>
          <label for="smothername">Mother's Name</label>
          <input type="text" id="smothername" name="smothername" placeholder="Enter mother's name" required>
        </div>
        
        <div>
          <label for="semail">Email</label>
          <input type="email" id="semail" name="semail" placeholder="Enter your email" required>
        </div>

        <div>
          <label for="coursedetails">Course Details</label>
          <select id="coursedetails" name="coursedetails" required>
            <option value="">-- Select Course --</option>
            <option value="Java Full Stack">Java Full Stack</option>
            <option value="Python Full Stack">Python Full Stack</option>
            <option value="Data Science">Data Science</option>
            <option value="DevOps">DevOps</option>
          </select>
        </div>

        <div>
          <label for="address">Address</label>
          <textarea id="address" name="address" rows="3" placeholder="Enter your address" required></textarea>
        </div>

        <button type="submit">Register Now</button>

        <p class="note">Your information will be securely stored in our database.</p>

        <a href="StudentInterFace.html">⬅ Back to Home</a>
      </div>
    </form>
  </div>
</body>
</html>
