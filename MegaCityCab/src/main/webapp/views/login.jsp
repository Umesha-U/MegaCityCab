<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="../css/login.css">
</head>
<body>
    <div class="login-container">
        <form action="/MegaCityCab/Loginservlet" method="post">
            <div class="login-header">
                <img class="login-icon" src="../assets/user.jfif" alt="User Icon">
                <h2>Login</h2>
            </div>
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required placeholder="Enter Username">
            
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required placeholder="Enter Password">
            
            <button type="submit" class="login-btn">Login</button>
            
            <% if (request.getParameter("error") != null) { %>
                <p style="color:red;">${param.error}</p>
            <% } %>
            <a href="register.jsp" class="register-link">Don't have an account? Register here</a>
        </form>
    </div>
</body>
</html>
