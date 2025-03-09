<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="model.DBConnection" %>
<!DOCTYPE html>
<html>
<head>
    <title>Delete Driver</title>
    <link rel="stylesheet" href="../css/delete_driver.css">
</head>
<body>
    <div class="delete-driver-container">
        <h2>DELETE DRIVER</h2>
        
        <%
            int driverId = Integer.parseInt(request.getParameter("id"));
            String query = "SELECT * FROM drivers WHERE driver_id = ?";
            Connection connection = DBConnection.getConnection();
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setInt(1, driverId);
            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
                String driverName = resultSet.getString("driver_name");
        %>
        
        <p>Are you sure you want to delete the driver <strong><%= driverName %></strong>?</p>
        <form action="/MegaCityCab/DeleteDriverServlet" method="POST">
            <input type="hidden" name="driver_id" value="<%= driverId %>">
            <button type="submit" class="delete-btn">YES, DELETE</button>
        </form>
        <a href="/MegaCityCab/views/manageDrivers.jsp" class="cancel-btn">CANCEL</a>
        
        <%
            } else {
                out.println("<p class='error-message'>Error: Driver not found.</p>");
            }
        %>
    </div>
</body>
</html>