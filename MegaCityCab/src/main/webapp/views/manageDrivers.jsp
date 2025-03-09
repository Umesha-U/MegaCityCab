<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="model.DBConnection" %>
<!DOCTYPE html>
<html>
<head>
    <title>Manage Drivers</title>
    <link rel="stylesheet" href="../css/manage_drivers.css">
</head>
<body>
    <div class="manage-drivers-container">
        <h2>MANAGE DRIVERS</h2>
        
        <h3>ADD DRIVER</h3>
        <form action="/MegaCityCab/AddDriverServlet" method="POST">
            <div class="input-container">
                <label for="driver_name">Driver Name:</label>
                <input type="text" name="driver_name" required>
            </div>
            <div class="input-container">
                <label for="license_number">License Number:</label>
                <input type="text" name="license_number" required>
            </div>
            <div class="input-container">
                <label for="phone">Phone:</label>
                <input type="text" name="phone" required>
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
        </form>
        
        <h3>EXISTING DRIVERS</h3>
        <table>
            <thead>
                <tr>
                    <th>Driver Name</th>
                    <th>License Number</th>
                    <th>Phone</th>
                    <th>Status</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <%  
                    String query = "SELECT * FROM drivers";
                    Connection connection = DBConnection.getConnection();
                    Statement statement = connection.createStatement();
                    ResultSet resultSet = statement.executeQuery(query);

                    if (resultSet != null) {
                        while (resultSet.next()) {
                %>
                <tr>
                    <td><%= resultSet.getString("driver_name") %></td>
                    <td><%= resultSet.getString("license_number") %></td>
                    <td><%= resultSet.getString("phone") %></td>
                    <td><%= resultSet.getString("status") %></td>
                    <td>
                        <a href="updateDriver.jsp?id=<%= resultSet.getInt("driver_id") %>">Update</a> | 
                        <a href="deleteDriver.jsp?id=<%= resultSet.getInt("driver_id") %>">Delete</a>
                    </td>
                </tr>
                <% 
                        }
                    } else {
                        out.println("<tr><td colspan='5'>No drivers found.</td></tr>");
                    }
                %>
            </tbody>
        </table>
    </div>
</body>
</html>