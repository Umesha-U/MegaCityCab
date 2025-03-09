<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>User Registration</title>
    <link rel="stylesheet" href="../css/register.css">
</head>
<body>
    <div class="register-container">
        <h2>USER REGISTRATION</h2>
        <form action="/MegaCityCab/RegisterServlet" method="post">
            <div class="input-container">
                <span>&#128100;</span>
                <input type="text" name="username" placeholder="Username" required>
            </div>
            <div class="input-container">
                <span>&#128274;</span>
                <input type="password" name="password" placeholder="Password" required>
            </div>
            <div class="input-container">
                <span>&#9993;</span>
                <input type="email" name="email" placeholder="Email" required>
            </div>
            <div class="input-container">
                <span>&#128222;</span>
                <input type="text" name="phone" placeholder="Phone" required>
            </div>
            <div class="input-container">
                <span>&#128100;</span>
                <input type="text" name="name" placeholder="Full Name" required>
            </div>
            <div class="input-container">
                <span>&#127968;</span>
                <textarea name="address" placeholder="Address" required></textarea>
            </div>
            <div class="input-container">
                <span>&#128196;</span>
                <input type="text" name="nic" placeholder="NIC Number" required>
            </div>
            <button type="submit">REGISTER</button>
        </form>
        <p>Already have an account? <a href="login.jsp">Login here</a></p>
    </div>
</body>
</html>
