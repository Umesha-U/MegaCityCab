<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Car</title>
    <link rel="stylesheet" href="../css/add_car.css">
</head>
<body>
    <div class="car-form-container">
        <h2>ADD NEW CAR</h2>
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
            <button type="button" class="back-btn" onclick="window.location.href='managerdashboard.jsp'">BACK</button>
        </form>
        <% if(request.getParameter("error") != null) { %>
            <p class="error-message"><%= request.getParameter("error") %></p>
        <% } %>
    </div>
</body>
</html>
