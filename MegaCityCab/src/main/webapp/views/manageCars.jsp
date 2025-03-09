<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="model.DBConnection" %>
<!DOCTYPE html>
<html>
<head>
    <title>Manage Cars</title>
    <link rel="stylesheet" href="../css/manage_cars.css">
</head>
<body>
    <div class="manage-cars-container">
        <h2>MANAGE CARS</h2>
        
        <form action="/MegaCityCab/AddCarServlet" method="post">
            <div class="input-container">
                <label for="carModel">Car Model:</label>
                <input type="text" id="carModel" name="carModel" required />
            </div>
            <div class="input-container">
                <label for="carNumber">Car Number:</label>
                <input type="text" id="carNumber" name="carNumber" required />
            </div>
            <div class="input-container">
                <label for="carType">Car Type:</label>
                <select id="carType" name="carType">
                    <option value="Sedan">Sedan</option>
                    <option value="SUV">SUV</option>
                    <option value="Mini">Mini</option>
                </select>
            </div>
            <div class="input-container">
                <label for="capacity">Capacity:</label>
                <input type="number" id="capacity" name="capacity" required />
            </div>
            <button type="submit">ADD CAR</button>
        </form>
        
        <!-- Display Existing Cars -->
        <h3>EXISTING CARS</h3>
        <table>
            <thead>
                <tr>
                    <th>Car Model</th>
                    <th>Car Number</th>
                    <th>Car Type</th>
                    <th>Capacity</th>
                    <th>Status</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <%  
                    String query = "SELECT * FROM cars";
                    Connection connection = DBConnection.getConnection();
                    Statement statement = connection.createStatement();
                    ResultSet resultSet = statement.executeQuery(query);

                    while (resultSet.next()) {
                %>
                <tr>
                    <td><%= resultSet.getString("car_model") %></td>
                    <td><%= resultSet.getString("car_number") %></td>
                    <td><%= resultSet.getString("car_type") %></td>
                    <td><%= resultSet.getInt("capacity") %></td>
                    <td><%= resultSet.getString("status") %></td>
                    <td>
                        <a href="/MegaCityCab/UpdateCarServlet?car_id=<%= resultSet.getInt("car_id") %>">Update</a> | 
                        <a href="/MegaCityCab/DeleteCarServlet?car_id=<%= resultSet.getInt("car_id") %>">Delete</a>
                    </td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </div>
</body>
</html>
