<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="model.User" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Home Dashboard</title>
    <link rel="stylesheet" href="../css/UserDashboard.css"> <!-- Link to the iOS styled CSS -->
</head>
<body>
    <%
        // Retrieve the user object from the existing session
        User user = (User) request.getSession(false).getAttribute("user");

        // If the user is not logged in, redirect to the login page
        if (user == null) {
            response.sendRedirect("views/login.jsp?error=Please%20login%20first");
            return;
        }
    %>

    <!-- Navigation Bar -->
    <nav class="navbar">
        <ul>
            <li><a href="#home" class="nav-link">Home</a></li>
            <li><a href="#services" class="nav-link">Services</a></li>
            <li><a href="#about" class="nav-link">About</a></li>
            <li><a href="#contact" class="nav-link">Contact</a></li>
        </ul>
    </nav>

    <!-- Hero Section -->
    <section class="hero">
        <div class="hero-content">
            <h1>Work better, safer, together.</h1>
            <p>Manage your bookings seamlessly in one place.</p>
            <div class="cta-buttons">
                <a href="booking.jsp" class="button primary">Go to Booking</a>
                <a href="ViewMyBookings.jsp" class="button secondary">View Your Bookings</a>
            </div>
        </div>
    </section>

    <!-- Footer Section -->
    <footer>
        <a href="/MegaCityCab/LogoutServlet" class="button logout-btn">Logout</a>
    </footer>

</body>
</html>
