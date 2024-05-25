<?php
$servername = "localhost";
$username = "root"; // change this if you have a different username
$password = ""; // change this if you have a password
$dbname = "BBCMaintainance";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$customer_name = $_POST['gname'];
$customer_email = $_POST['gmail'];
$mobile = $_POST['cnum'];
$address = $_POST['CAddress'];
$service_type = $_POST['cage'];
$message = $_POST['message'];

$sql = "INSERT INTO bookings (customer_name, customer_email, mobile, address, service_type, message) 
        VALUES (?, ?, ?, ?, ?, ?)";

$stmt = $conn->prepare($sql);
$stmt->bind_param("ssssss", $customer_name, $customer_email, $mobile, $address, $service_type, $message);

if ($stmt->execute()) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$stmt->close();
$conn->close();
?>
