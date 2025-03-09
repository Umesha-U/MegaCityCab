<%@ page import="model.Bill" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Booking Confirmation</title>
    <link rel="stylesheet" href="../css/booking_confirmation.css">
</head>
<body>
    <div class="confirmation-container">
        <h2>BOOKING CONFIRMATION</h2>
        <p>Thank you for booking with MegaCity Cab.</p>

        <h3>BOOKING DETAILS</h3>
        <% 
            Bill bill = (Bill) request.getAttribute("bill");
            if (bill != null) {
        %>
            <p>Booking ID: <%= bill.getBookingId() %></p>
            <p>Total Amount: Rs <%= bill.getTotalAmount() %></p>
            <p>Bill Time: <%= bill.getBillTime() %></p>

            <!-- Button to download the bill as PDF -->
            <a href="generated_pdfs/bill_<%= bill.getBillId() %>.pdf" download>
                <button>DOWNLOAD BILL AS PDF</button>
            </a>
        <% 
            } else {
        %>
            <p>Bill not found. Please try again later.</p>
        <% 
            }
        %>
    </div>
</body>
</html>