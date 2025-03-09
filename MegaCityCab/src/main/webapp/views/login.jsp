<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>User Login</title>
    <link rel="stylesheet" href="../css/login.css">
</head>
<body>
    <div class="login-container">
        <h2>USER LOGIN</h2>
        <form action="/MegaCityCab/Loginservlet" method="post">
            <div class="input-container">
                <span>&#128100;</span>
                <input type="text" name="username" placeholder="Email ID" required>
            </div>
            <div class="input-container">
                <span>&#128274;</span>
                <input type="password" name="password" placeholder="Password" required>
            </div>
            <label>
                <input type="checkbox" name="remember"> Remember me
            </label>
            <a href="#">Forgot Password?</a>
            <button type="submit">LOGIN</button>
            <% if (request.getParameter("error") != null) { %>
                <p style="color:red;">${param.error}</p>
            <% } %>
        </form>
        <form action="register.jsp">
            <button type="submit" class="register-btn">REGISTER</button>
        </form>
    </div>
</body>
</html>
