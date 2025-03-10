<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="../css/admin_dashboard.css">
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
                    <li><a href="#">Users</a></li>
                    <li><a href="#">Bookings</a></li>
                    <li><a href="#">Cars</a></li>
                    <li><a href="#">Drivers</a></li>
                    <li><a href="#">Logout</a></li>
                </ul>
            </nav>
        </div>
    </header>

   
    <!-- Dashboard Sections -->
    <section class="dashboard">
        <div class="container">
            <div class="grid">
                <div class="box">
                    <h3><i class="fas fa-users"></i> Manage Users</h3>
                    <p>View and manage user accounts.</p>
                    <a href="manageUsers.jsp" class="btn">Go to Users</a>
                </div>
                <div class="box">
                    <h3><i class="fas fa-calendar-alt"></i> View Bookings</h3>
                    <p>Check customer bookings.</p>
                    <a href="viewbookings.jsp" class="btn">Go to Bookings</a>
                </div>
                <div class="box">
                    <h3><i class="fas fa-car"></i> Manage Cars</h3>
                    <p>Add or update cars.</p>
                    <a href="manageCars.jsp" class="btn">Manage Cars</a>
                </div>
                <div class="box">
                    <h3><i class="fas fa-id-badge"></i> Manage Drivers</h3>
                    <p>Add and manage driver details.</p>
                    <a href="manageDrivers.jsp" class="btn">Manage Drivers</a>
                </div>
            </div>
        </div>
    </section>
</body>
</html>