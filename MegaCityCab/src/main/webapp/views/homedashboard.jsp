<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="model.User" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Dashboard</title>
    <link rel="stylesheet" href="../css/UserDashboard.css">
</head>
<body>
    <%
        User user = (User) request.getSession(false).getAttribute("user");
        if (user == null) {
            response.sendRedirect("views/login.jsp?error=Please%20login%20first");
            return;
        }
    %>

    <div class="dashboard-container">
        <!-- Header Section -->
        <header>
            <h1>WELCOME, <%= user.getUsername() %>!</h1>
            <p>Welcome to your dashboard</p>
        </header>

        <!-- Dashboard Content Section -->
        <section class="dashboard-content">
            <!-- Book a Ride Section -->
            <div class="section">
                <h3>Book a Ride</h3>
                <p>Book your ride from here.</p>
                <a href="booking.jsp" class="button">GO TO BOOKING</a>
            </div>

            <!-- View Past Bookings Section -->
            <div class="section">
                <h3>Your Past Bookings</h3>
                <p>View your previous ride bookings.</p>
                <a href="ViewMyBookings.jsp" class="button">GO TO YOUR BOOKINGS</a>
            </div>
        </section>
        
        <!-- Logout Button -->
        <div class="logout">
            <a href="/MegaCityCab/LogoutServlet" class="button logout-btn">LOGOUT</a>
        </div>
    </div>
</body>
</html>