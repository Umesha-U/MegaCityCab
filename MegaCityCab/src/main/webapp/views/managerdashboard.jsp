<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Manager Dashboard</title>
    <link rel="stylesheet" href="../css/ManagerDashboard.css">
</head>
<body>
    <div class="dashboard-container">
        <header>
            <h1>WELCOME MANAGER</h1>
            <p>Welcome to the Manager Dashboard</p>
        </header>

        <section class="dashboard-content">
            <!-- View Bookings Section -->
            <div class="section">
                <h3>VIEW BOOKINGS</h3>
                <p>Here you can view and manage bookings.</p>
                <a href="viewbookings.jsp" class="button">GO TO BOOKINGS</a>
            </div>

            <!-- Manage Cars Section -->
            <div class="section">
                <h3>MANAGE CARS</h3>
                <p>Here you can add new cars and view existing ones.</p>
                <a href="add_car.jsp" class="button">ADD NEW CAR</a>
                <a href="view_cars.jsp" class="button">VIEW CARS</a>
            </div>

            <!-- Manage Drivers Section -->
            <div class="section">
                <h3>MANAGE DRIVERS</h3>
                <p>Here you can add new drivers and view existing ones.</p>
                <a href="add_driver.jsp" class="button">ADD NEW DRIVER</a>
                <a href="view_drivers.jsp" class="button">VIEW DRIVERS</a>
            </div>
        </section>
        
        <!-- Logout Button -->
        <div class="logout">
            <a href="/MegaCityCab/LogoutServlet" class="button logout-btn">LOGOUT</a>
        </div>
    </div>
</body>
</html>