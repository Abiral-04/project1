<?php
require "db_Connect.php";
// Process form submission to update status
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['booking_id']) && isset($_POST['status'])) {
     // Include this at the beginning of the file

    $bookingId = $_POST['booking_id'];
    $newStatus = $_POST['status'];
    // Update status in the database
    $updateSql = "UPDATE bookings SET status='$newStatus' WHERE id='$bookingId'";
    if ($conn->query($updateSql) === TRUE) {
        // Redirect to avoid form resubmission
        header("Location: ".$_SERVER['PHP_SELF']);
        exit();
    } else {
        echo "Error updating record: " . $conn->error;
    }
    // Close connection after processing the form
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking Information</title>
    <!-- Bootstrap CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

</head>
<body>
    <div class="container mt-5">
        <h2 class="mb-4">Booking Information</h2>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Customer Name</th>
                    <th>Email</th>
                    <th>Mobile</th>
                    <th>Address</th>
                    <th>Service Type</th>
                    <th>Message</th>
                    <th>Status</th>
                    <th>Change Status</th>
                </tr>
            </thead>
            <tbody>
                <?php
                // Fetch booking information from the database
                $sql = "SELECT * FROM bookings";
                $result = $conn->query($sql);
                if ($result->num_rows > 0) {
                    // Output data of each row
                    while ($row = $result->fetch_assoc()) {
                        echo "<tr>";
                        echo "<td>" . $row["customer_name"] . "</td>";
                        echo "<td>" . $row["customer_email"] . "</td>";
                        echo "<td>" . $row["mobile"] . "</td>";
                        echo "<td>" . $row["address"] . "</td>";
                        echo "<td>" . $row["service_type"] . "</td>";
                        echo "<td>" . $row["message"] . "</td>";
                        echo "<td>" . $row["status"] . "</td>";
                        echo "<td>"; // New column for action buttons
                        echo "<form method='post'>";
                        echo "<input type='hidden' name='booking_id' value='" . $row['id'] . "'>";
                        echo "<div class='btn-container'>"; // Flexbox container
                        echo "<select class='form-select me-2' name='status'>";
                        echo "<option value='New'>Change Status</option>"; // Placeholder option
                        echo "<option value='New'>New</option>"; 
                        echo "<option value='In Process'>In Process</option>";
                        echo "<option value='Completed'>Completed</option>"; 
                        echo "<option value='Dismissed'>Dismissed</option>"; 
                        echo "</select>";
                        echo "<button type='submit' class='btn btn-primary btn-sm'>Change</button>";
                        echo "</div>"; // End of flexbox container
                        echo "</form>";
                        echo "</td>";
                        echo "</tr>";
                    }
                } else {
                    echo "<tr><td colspan='8'>No bookings found</td></tr>";
                }
                ?>
            </tbody>
        </table>
    </div>
    <?php $conn->close(); ?>
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
