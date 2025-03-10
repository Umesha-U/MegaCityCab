<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="dao.BookingDAO" %>
<%@ page import="model.Booking" %>

<!DOCTYPE html>
<html>
<head>
    <title>Update Booking</title>
    <link rel="stylesheet" href="../css/update_booking.css">
</head>
<body>
    <div class="update-booking-container">
        <h2>UPDATE BOOKING</h2>
        
        <%
            String bookingIdStr = request.getParameter("bookingId");

            if (bookingIdStr != null && !bookingIdStr.isEmpty()) {
                try {
                    int bookingId = Integer.parseInt(bookingIdStr);
                    BookingDAO bookingDAO = new BookingDAO();
                    Booking booking = bookingDAO.getBookingById(bookingId);

                    if (booking != null) {
        %>
        <form action="/MegaCityCab/UpdateBookingServlet" method="POST">
            <input type="hidden" name="booking_id" value="<%= booking.getBookingId() %>">
            
            <div class="input-container">
                <label for="customer_name">Customer Name:</label>
                <input type="text" name="customer_name" value="<%= booking.getCustomerName() %>" required />
            </div>
            <div class="input-container">
                <label for="pickup_location">Pickup Location:</label>
                <input type="text" name="pickup_location" value="<%= booking.getPickupLocation() %>" required />
            </div>
            <div class="input-container">
                <label for="destination">Destination:</label>
                <input type="text" name="destination" value="<%= booking.getDestination() %>" required />
            </div>
            <div class="input-container">
                <label for="status">Status:</label>
                <select name="status">
                    <option value="Pending" <% if ("Pending".equals(booking.getStatus())) { %>selected<% } %>>Pending</option>
                    <option value="Completed" <% if ("Completed".equals(booking.getStatus())) { %>selected<% } %>>Completed</option>
                    <option value="Cancelled" <% if ("Cancelled".equals(booking.getStatus())) { %>selected<% } %>>Cancelled</option>
                </select>
            </div>
            <button type="submit">UPDATE BOOKING</button>
        </form>
        <%
                    } else {
                        out.println("<p class='error-message'>Booking not found.</p>");
                    }
                } catch (NumberFormatException e) {
                    out.println("<p class='error-message'>Invalid booking ID format.</p>");
                }
            } else {
                out.println("<p class='error-message'>Booking ID is missing.</p>");
            }
        %>
    </div>
</body>
</html>