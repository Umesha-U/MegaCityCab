<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Driver</title>
    <link rel="stylesheet" href="../css/add_driver.css">
</head>
<body>
    <div class="driver-form-container">
        <h2>ADD NEW DRIVER</h2>
        <form action="/MegaCityCab/AddDriverServlet" method="POST">
            <div class="input-container">
                <label for="driver_name">Driver Name:</label>
                <input type="text" name="driver_name" placeholder="Enter Driver Name" required>
            </div>
            <div class="input-container">
                <label for="license_number">License Number:</label>
                <input type="text" name="license_number" placeholder="Enter License Number" required>
            </div>
            <div class="input-container">
                <label for="phone">Phone:</label>
                <input type="text" name="phone" placeholder="Enter Phone Number" required>
            </div>
            <div class="input-container">
                <label for="status">Status:</label>
                <select name="status">
                    <option value="Available">Available</option>
                    <option value="Assigned">Assigned</option>
                    <option value="Inactive">Inactive</option>
                </select>
            </div>
            <button type="submit">ADD DRIVER</button>
            <button type="button" class="back-btn" onclick="window.location.href='managerdashboard.jsp'">BACK</button>
        </form>
        <% if(request.getParameter("error") != null) { %>
            <p class="error-message"><%= request.getParameter("error") %></p>
        <% } %>
    </div>
</body>
</html>