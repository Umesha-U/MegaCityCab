<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="model.DBConnection" %>
<!DOCTYPE html>
<html>
<head>
    <title>Delete Car</title>
    <link rel="stylesheet" href="../css/delete_car.css">
</head>
<body>
    <div class="delete-car-container">
        <h2>DELETE CAR</h2>
        
        <% 
            String carIdParam = request.getParameter("car_id");

            if (carIdParam == null || carIdParam.isEmpty()) {
                out.println("<p class='error-message'>Error: Car ID is missing or invalid!</p>");
            } else {
                try {
                    int carId = Integer.parseInt(carIdParam);
                    String query = "SELECT * FROM cars WHERE car_id = ?";
                    Connection connection = DBConnection.getConnection();
                    PreparedStatement statement = connection.prepareStatement(query);
                    statement.setInt(1, carId);
                    ResultSet resultSet = statement.executeQuery();

                    if (resultSet.next()) {
        %>
        
        <p>Are you sure you want to delete the following car?</p>
        <table>
            <tr><th>Car ID</th><td><%= resultSet.getInt("car_id") %></td></tr>
            <tr><th>Car Model</th><td><%= resultSet.getString("car_model") %></td></tr>
            <tr><th>Car Number</th><td><%= resultSet.getString("car_number") %></td></tr>
            <tr><th>Car Type</th><td><%= resultSet.getString("car_type") %></td></tr>
            <tr><th>Capacity</th><td><%= resultSet.getInt("capacity") %></td></tr>
            <tr><th>Status</th><td><%= resultSet.getString("status") %></td></tr>
        </table>

        <form action="/MegaCityCab/deleteCarServlet" method="GET">
            <input type="hidden" name="car_id" value="<%= carId %>">
            <button type="submit" class="delete-btn">YES, DELETE CAR</button>
        </form>
        
        <a href="view_cars.jsp" class="cancel-btn">CANCEL</a>

        <% 
                    } else {
                        out.println("<p class='error-message'>No car found with the provided ID.</p>");
                    }
                    resultSet.close();
                    statement.close();
                    connection.close();
                } catch (NumberFormatException e) {
                    out.println("<p class='error-message'>Error: Invalid Car ID format. It should be a number.</p>");
                }
            }
        %>
    </div>
</body>
</html>
