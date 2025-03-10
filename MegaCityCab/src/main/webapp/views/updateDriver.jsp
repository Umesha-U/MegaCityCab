<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="model.DBConnection" %>
<!DOCTYPE html>
<html>
<head>
    <title>Update Driver</title>
    <link rel="stylesheet" href="../css/update_driver.css">
</head>
<body>
    <div class="update-driver-container">
        <h2>UPDATE DRIVER</h2>
        
        <%
            int driverId = Integer.parseInt(request.getParameter("id"));
            String query = "SELECT * FROM drivers WHERE driver_id = ?";
            Connection connection = DBConnection.getConnection();
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setInt(1, driverId);
            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
                String driverName = resultSet.getString("driver_name");
                String licenseNumber = resultSet.getString("license_number");
                String phone = resultSet.getString("phone");
                String status = resultSet.getString("status");
        %>

        <form action="/MegaCityCab/UpdateDriverServlet" method="POST">
            <input type="hidden" name="driver_id" value="<%= driverId %>">

            <div class="input-container">
                <label for="driver_name">Driver Name:</label>
                <input type="text" name="driver_name" value="<%= driverName %>" required>
            </div>
            <div class="input-container">
                <label for="license_number">License Number:</label>
                <input type="text" name="license_number" value="<%= licenseNumber %>" required>
            </div>
            <div class="input-container">
                <label for="phone">Phone:</label>
                <input type="text" name="phone" value="<%= phone %>" required>
            </div>
            <div class="input-container">
                <label for="status">Status:</label>
                <select name="status">
                    <option value="Available" <%= "Available".equals(status) ? "selected" : "" %>>Available</option>
                    <option value="Assigned" <%= "Assigned".equals(status) ? "selected" : "" %>>Assigned</option>
                    <option value="Inactive" <%= "Inactive".equals(status) ? "selected" : "" %>>Inactive</option>
                </select>
            </div>
            
            <button type="submit">UPDATE DRIVER</button>
        </form>

        <%
            } else {
                out.println("<p class='error-message'>Error: Driver not found.</p>");
            }
        %>
    </div>
</body>
</html>