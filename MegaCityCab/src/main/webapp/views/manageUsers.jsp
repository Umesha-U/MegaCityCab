<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="model.DBConnection" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard - Manage Users</title>
    <link rel="stylesheet" href="../css/ManageUsers.css">
</head>
<body>
    <div class="manage-users-container">
        <h2>MANAGE USERS</h2>
        
        <h3>ADD USER</h3>
        <form action="/MegaCityCab/AddUserServlet" method="POST">
            <div class="input-container">
                <label for="username">Username:</label>
                <input type="text" name="username" required>
            </div>
            <div class="input-container">
                <label for="password">Password:</label>
                <input type="password" name="password" required>
            </div>
            <div class="input-container">
                <label for="email">Email:</label>
                <input type="email" name="email" required>
            </div>
            <div class="input-container">
                <label for="phone">Phone:</label>
                <input type="text" name="phone" required>
            </div>
            <div class="input-container">
                <label for="role">Role:</label>
                <select name="role">
                    <option value="user">User</option>
                    <option value="admin">Admin</option>
                    <option value="Manager">Manager</option>
                </select>
            </div>
            <button type="submit">ADD USER</button>
        </form>
        
        <h3>EXISTING USERS</h3>
        <table>
            <thead>
                <tr>
                    <th>Username</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Role</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <%  
                    String query = "SELECT * FROM users";
                    try (Connection connection = DBConnection.getConnection();
                         Statement statement = connection.createStatement();
                         ResultSet resultSet = statement.executeQuery(query)) {

                        while (resultSet.next()) {
                %>
                <tr>
                    <td><%= resultSet.getString("username") %></td>
                    <td><%= resultSet.getString("email") %></td>
                    <td><%= resultSet.getString("phone") %></td>
                    <td><%= resultSet.getString("role") %></td>
                    <td>
                        <a href="updateUser.jsp?id=<%= resultSet.getInt("user_id") %>">Update</a> | 
                        <a href="deleteConfirmation.jsp?id=<%= resultSet.getInt("user_id") %>">Delete</a>
                    </td>
                </tr>
                <% 
                        }
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                %>
            </tbody>
        </table>
    </div>
</body>
</html>