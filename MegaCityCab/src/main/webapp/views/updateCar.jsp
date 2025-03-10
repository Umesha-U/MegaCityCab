<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="model.Car" %>
<!DOCTYPE html>
<html>
<head>
    <title>Update Car</title>
    <link rel="stylesheet" href="../css/update_car.css">
</head>
<body>
    <div class="update-car-container">
        <h2>UPDATE CAR</h2>
        <form action="/MegaCityCab/UpdateCarServlet" method="POST">
            <input type="hidden" name="car_id" value="<%= ((Car) request.getAttribute("car")).getCarId() %>">
            
            <div class="input-container">
                <label for="car_model">Car Model:</label>
                <input type="text" name="car_model" value="<%= ((Car) request.getAttribute("car")).getCarModel() %>" required>
            </div>
            
            <div class="input-container">
                <label for="car_number">Car Number:</label>
                <input type="text" name="car_number" value="<%= ((Car) request.getAttribute("car")).getCarNumber() %>" required>
            </div>
            
            <div class="input-container">
                <label for="car_type">Car Type:</label>
                <input type="text" name="car_type" value="<%= ((Car) request.getAttribute("car")).getCarType() %>" required>
            </div>
            
            <div class="input-container">
                <label for="capacity">Capacity:</label>
                <input type="number" name="capacity" value="<%= ((Car) request.getAttribute("car")).getCapacity() %>" required>
            </div>
            
            <div class="input-container">
                <label for="status">Status:</label>
                <select name="status">
                    <option value="Available" <% if ("Available".equals(((Car) request.getAttribute("car")).getStatus())) out.print("selected"); %>>Available</option>
                    <option value="In Use" <% if ("In Use".equals(((Car) request.getAttribute("car")).getStatus())) out.print("selected"); %>>In Use</option>
                    <option value="Under Maintenance" <% if ("Under Maintenance".equals(((Car) request.getAttribute("car")).getStatus())) out.print("selected"); %>>Under Maintenance</option>
                </select>
            </div>
            
            <button type="submit">UPDATE CAR</button>
        </form>
    </div>
</body>
</html>