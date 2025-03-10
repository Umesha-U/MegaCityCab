<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manager Dashboard</title>
    <link rel="stylesheet" href="../css/ManagerDashboard.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</head>
<body>
    <!-- Header Section -->
    <header>
        <div class="container">
            <div class="logo">MegaCity<span>Cab</span></div>
            <nav>
                <ul>
                    <li><a href="#" class="active">Home</a></li>
                    <li><a href="#">Bookings</a></li>
                    <li><a href="#">Cars</a></li>
                    <li><a href="#">Drivers</a></li>
                    <li><a href="/MegaCityCab/LogoutServlet">Logout</a></li>
                </ul>
            </nav>
        </div>
    </header>

   

    <!-- Dashboard Sections -->
    <section class="dashboard">
        <div class="container">
            <div class="grid">
                <div class="box">
                    <h3><i class="fas fa-calendar-alt"></i> View Bookings</h3>
                    <p>View and manage customer bookings.</p>
                    <a href="viewbookings.jsp" class="btn">Go to Bookings</a>
                </div>
                <div class="box">
                    <h3><i class="fas fa-car"></i> Manage Cars</h3>
                    <p>Add new cars or view existing inventory.</p>
                    <a href="add_car.jsp" class="btn">Add New Car</a>
                    <a href="view_cars.jsp" class="btn">View Cars</a>
                </div>
                <div class="box">
                    <h3><i class="fas fa-id-badge"></i> Manage Drivers</h3>
                    <p>Add or manage driver details.</p>
                    <a href="add_driver.jsp" class="btn">Add New Driver</a>
                    <a href="view_drivers.jsp" class="btn">View Drivers</a>
                </div>
            </div>
        </div>
    </section>
</body>
</html>