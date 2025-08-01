<?php
include 'config.php';
$conn = new mysqli(getenv('DB_HOST'), getenv('DB_USER'), getenv('DB_PASS'), getenv('DB_NAME'));

if ($conn->connect_error) {
    die("❌ Connection failed: " . $conn->connect_error);
}

?>
